"""
1:得到function中所有节点
2:找到包含send或transfer的节点
3:找到每个send或transfer节点的后续节点
4:对这些后续节点分析调用链（先外部调用链，再内部调用链）_analyzerCallLink
5:外部调用链分析注释在 _externalCallLinkparse
6:内部调用链分析注释在 _internalCallLinkparse
"""
from slither.detectors.abstract_detector import (AbstractDetector, DetectorClassification)
from slither.slithir.operations.transfer import Transfer


class SpcificReen(AbstractDetector):
    ARGUMENT = 'SpcificReen'
    HELP = 'Benign reentrancy vulnerabilities'
    IMPACT = DetectorClassification.LOW
    CONFIDENCE = DetectorClassification.MEDIUM

    WIKI = 'https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2'

    WIKI_TITLE = 'Reentrancy vulnerabilities'
    WIKI_DESCRIPTION = '''
    Detection of the [re-entrancy bug](https://github.com/trailofbits/not-so-smart-contracts/tree/master/reentrancy).
    Only report reentrancy that acts as a double call (see `reentrancy-eth`, `reentrancy-no-eth`).'''
    WIKI_EXPLOIT_SCENARIO = '''
    ```solidity
        function callme(){
            if( ! (msg.sender.call()() ) ){
                throw;
            }
            counter += 1
        }   
    ```

    `callme` contains a reentrancy. The reentrancy is benign because it's exploitation would have the same effect as two consecutive calls.'''

    WIKI_RECOMMENDATION = 'Apply the [check-effects-interactions pattern](http://solidity.readthedocs.io/en/v0.4.21/security-considerations.html#re-entrancy).'

    def _detect(self):
        """
        """
        # if a node was already visited by another path
        # we will only explore it if the traversal brings
        # new variables written
        # This speedup the exploration through a light fixpoint
        # Its particular useful on 'complex' functions with several loops and conditions
        self.visited_all_paths = {}

        for c in self.contracts:
            self.detect_reentrancy(c)

        return []

    def detect_reentrancy(self, contract):
        """
        """
        for function in contract.functions_and_modifiers_declared:
            if function.is_implemented:
                # if self.KEY in function.context:
                #     continue
                # self._explore(function.entry_point, [])
                # function.context[self.KEY] = True
                transferORsendNodes = []  # 用于存储每一个函数中的transfer或send节点
                nodes = self._getAllNodes(function)
                for node in nodes:
                    for ir in node.irs:
                        if isinstance(ir, Transfer):
                            transferORsendNodes.append(node)
                afterNodeList = []      # 用于存储每一个函数中的transfer或send所有后续节点
                for transferORsendNode in transferORsendNodes:
                    self._getAllbehindNode(transferORsendNode, afterNodeList)  #此时afterNodeList中存入了一个函数中的transfer或send所有后续节点

                for afterNode in afterNodeList:  # 找出后续是internal call的节点
                    self._analyzerCallLink(afterNode)
                    # if afterNode.internal_calls: # 如果后续节点是internal call 节点那么跳入到call graph
                    #     # 进入call graph
                    #     for internal_call in afterNode.internal_calls:
                    #         calledInternalFuntion = internal_call     # 得到called interalFuntion对象
                    #         calledInternalFuntionNodeList = self._getAllNodes(calledInternalFuntion)  # 得到calledInteralFuntion的所有节点列表
                    #         for calledInternalFuntionNode in calledInternalFuntionNodeList: # 遍历节点列表，为了寻找含有high_level_call或low_level_call的节点
                    #             if calledInternalFuntionNode.high_level_calls or calledInternalFuntionNode.low_level_calls: # 如果找到后，进行脏数据分析
                    #                 print('进行脏数据分析')
                    #             elif:   # 如果没找到，找calledFunction中所有的interal call
                    #                 if calledInternalFuntionNode.internal_calls:

    def _analyzerCallLink(self, node):
        """

        :param node: transferOR send后面的所有node
        :return: 不论是外部调用链分析还是内部调用链分析，只要有一个分析找到可重入就返回
        先对这些节点做外部调用链的分析，在做内部调用链的分析
        """
        resultExternal = self._externalCallLinkparse(node)
        if resultExternal == 1:
            return
        resultInternal = self._internalCallLinkparse(node)
        if resultInternal == 1:
            return

    def _externalCallLinkparse(self, node):
        """
        :param node: 含有外部调用的node（跨合约）
        :return: 如果确实是脏数据则返回1
        遇到外部调用需要进行的分析
        1:先进行外部调用的脏数据分析：
            若确定为脏数据，打印‘reentrance’并返回1
            否则， 进入这个干净外部函数内得到他的所有node,再次分析调用链self._analyzerCallLink(calledExternalFunctionNode)
        """
        if node.high_level_calls or node.low_level_calls:
            print('进行脏数据分析...')
            if True:   # 如果数据脏则打印Reentrance
                print('reentrance')
                return 1
            else:   # 如果数据干净，跳入external call的Function.
                for external_call in node.high_level_calls + node.low_level_calls:
                    calledExternalFunction = external_call
                    calledExternalFunctionNodeList = self._getAllNodes(calledExternalFunction)
                    for calledExternalFunctionNode in calledExternalFunctionNodeList:
                        self._analyzerCallLink(calledExternalFunctionNode)

    def _internalCallLinkparse(self, node):
        '''
        :param node: 含有内部调用的node（跨函数）
        :return:
        1：跳入到internal function中，的到它的所有node:
           如果含有external node，调用self._externalCallLinkparse(calledInternalFuntionNode)
           否则，调用自己
        '''
        if node.internal_calls:  # 如果后续节点是internal call 节点那么跳入到call graph
            for internal_call in node.internal_calls:  # 进入call graph
                calledInternalFuntion = internal_call  # 得到called interalFuntion对象
                calledInternalFuntionNodeList = self._getAllNodes(calledInternalFuntion)  # 得到calledInteralFuntion的所有节点列表
                for calledInternalFuntionNode in calledInternalFuntionNodeList:  # 遍历节点列表，为了寻找含有high_level_call或low_level_call的节点
                    if calledInternalFuntionNode.high_level_calls or calledInternalFuntionNode.low_level_calls:  # 如果找到含有外部调用节点
                        result = self._externalCallLinkparse(calledInternalFuntionNode)
                        if result == 1:
                            return 1
                    else:
                        if calledInternalFuntionNode.internal_calls:
                            self._internalCallLinkparse(calledInternalFuntionNode)

    def _getAllNodes(self, function):
        return function.nodes

    def _getAllbehindNode(self, node, afterNodeList):
        sons = node.sons
        afterNodeList.extend(sons)
        for son in sons:
            self._getAllbehindNode(son, afterNodeList)

    # def _explore(self, node, visited, skip_father=None):
    #     """
    #         Explore the CFG and look for re-entrancy
    #         Heuristic: There is a re-entrancy if a state variable is written after an external call
    #
    #         node.context will contains the external calls executed It contains the calls executed in father nodes
    #
    #         if node.context is not empty, and variables are written, a re-entrancy is possible
    #     """
    #     if node in visited:
    #         return
    #
    #     visited = visited + [node]
    #
    #     # First we add the external calls executed in previous nodes
    #     # send_eth returns the list of calls sending value
    #     # calls returns the list of calls that can callback
    #     # read returns the variable read
    #     # read_prior_calls returns the variable read prior a call
    #     fathers_context = {'send_eth':set(), 'calls':set(), 'read':set(), 'read_prior_calls':{}}
    #
    #     for father in node.fathers:
    #         if self.KEY in father.context:
    #             fathers_context['send_eth'] |= set([s for s in father.context[self.KEY]['send_eth'] if s!=skip_father])
    #             fathers_context['calls'] |= set([c for c in father.context[self.KEY]['calls'] if c!=skip_father])
    #             fathers_context['read'] |= set(father.context[self.KEY]['read'])
    #             fathers_context['read_prior_calls'] = union_dict(fathers_context['read_prior_calls'], father.context[self.KEY]['read_prior_calls'])
    #
    #     # Exclude path that dont bring further information
    #     if node in self.visited_all_paths:
    #         if all(call in self.visited_all_paths[node]['calls'] for call in fathers_context['calls']):
    #             if all(send in self.visited_all_paths[node]['send_eth'] for send in fathers_context['send_eth']):
    #                 if all(read in self.visited_all_paths[node]['read'] for read in fathers_context['read']):
    #                     if dict_are_equal(self.visited_all_paths[node]['read_prior_calls'], fathers_context['read_prior_calls']):
    #                         return
    #     else:
    #         self.visited_all_paths[node] = {'send_eth':set(), 'calls':set(), 'read':set(), 'read_prior_calls':{}}
    #
    #     self.visited_all_paths[node]['send_eth'] = set(self.visited_all_paths[node]['send_eth'] | fathers_context['send_eth'])
    #     self.visited_all_paths[node]['calls'] = set(self.visited_all_paths[node]['calls'] | fathers_context['calls'])
    #     self.visited_all_paths[node]['read'] = set(self.visited_all_paths[node]['read'] | fathers_context['read'])
    #     self.visited_all_paths[node]['read_prior_calls'] = union_dict(self.visited_all_paths[node]['read_prior_calls'], fathers_context['read_prior_calls'])
    #
    #     node.context[self.KEY] = fathers_context
    #
    #     state_vars_read = set(node.state_variables_read)
    #
    #     # All the state variables written
    #     state_vars_written = set(node.state_variables_written)
    #     slithir_operations = []
    #     # Add the state variables written in internal calls
    #     for internal_call in node.internal_calls:
    #         # Filter to Function, as internal_call can be a solidity call
    #         if isinstance(internal_call, Function):
    #             state_vars_written |= set(internal_call.all_state_variables_written())
    #             state_vars_read |= set(internal_call.all_state_variables_read())
    #             slithir_operations += internal_call.all_slithir_operations()
    #
    #     contains_call = False
    #     node.context[self.KEY]['written'] = set(state_vars_written)
    #     if self._can_callback(node.irs + slithir_operations):
    #         node.context[self.KEY]['calls'] = set(node.context[self.KEY]['calls'] | {node})
    #         node.context[self.KEY]['read_prior_calls'][node] = set(node.context[self.KEY]['read_prior_calls'].get(node, set()) | node.context[self.KEY]['read'] |state_vars_read)
    #         contains_call = True
    #     if self._can_send_eth(node.irs + slithir_operations):
    #         node.context[self.KEY]['send_eth'] = set(node.context[self.KEY]['send_eth'] | {node})
    #
    #     node.context[self.KEY]['read'] = set(node.context[self.KEY]['read'] | state_vars_read)
    #
    #     sons = node.sons
    #     if contains_call and node.type in [NodeType.IF, NodeType.IFLOOP]:
    #         if self._filter_if(node):
    #             son = sons[0]
    #             self._explore(son, visited, node)
    #             sons = sons[1:]
    #         else:
    #             son = sons[1]
    #             self._explore(son, visited, node)
    #             sons = [sons[0]]
    #
    #
    #     for son in sons:
    #         self._explore(son, visited)