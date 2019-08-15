Processing contract: /home/jiaming/slither_fp_files/out1977.sol:Address
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:ERC165
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:ERC721Enumerable_custom
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:ERC721Full_custom
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:ERC721Metadata_custom
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:ERC721_custom
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:IERC165
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:IERC721
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:IERC721Enumerable
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:IERC721Metadata
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:IERC721Receiver
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:Percent
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:PlanetCryptoCoin_I
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:PlanetCryptoToken
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:PlanetCryptoUtils_I
Processing contract: /home/jiaming/slither_fp_files/out1977.sol:SafeMath
  Attempt to decompile the contract with methods...
  Failed to decompile methods. Attempt to decompile the contract without identifying methods...
  Propagating constants...
  Verifying patterns...
[33mWarning[0m for LockedEther in contract 'Address':
    | * Utility library of inline functions on addresses
    | */
  > |library Address {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out1977.sol(232)

[33mWarning[0m for LockedEther in contract 'ERC721Enumerable_custom':
    | * @dev See https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Enumerable_custom is ERC165, ERC721_custom, IERC721Enumerable {
    |  // Mapping from owner to list of owned token IDs
    |  mapping(address => uint256[]) private _ownedTokens;
  at /home/jiaming/slither_fp_files/out1977.sol(642)

[33mWarning[0m for UnhandledException in contract 'ERC721Enumerable_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Enumerable_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |
    |/**
  > | * @title IERC165
    | * @dev https://github.com/ethereum/EIPs/blob/master/EIPS/eip-165.md
    | */
  at /home/jiaming/slither_fp_files/out1977.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |  
  at /home/jiaming/slither_fp_files/out1977.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    | * @dev See https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721Enumerable_custom is ERC165, ERC721_custom, IERC721Enumerable {
    |  // Mapping from owner to list of owned token IDs
    |  mapping(address => uint256[]) private _ownedTokens;
  at /home/jiaming/slither_fp_files/out1977.sol(642)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    super._addTokenTo(to, tokenId);
    |    uint256 length = _ownedTokens[to].length;
  > |    _ownedTokens[to].push(tokenId);
    |    _ownedTokensIndex[tokenId] = length;
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(718)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    uint256 length = _ownedTokens[to].length;
    |    _ownedTokens[to].push(tokenId);
  > |    _ownedTokensIndex[tokenId] = length;
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(719)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    uint256 lastToken = _ownedTokens[from][lastTokenIndex];
    |
  > |    _ownedTokens[from][tokenIndex] = lastToken;
    |    // This also deletes the contents at the last position of the array
    |    _ownedTokens[from].length--;
  at /home/jiaming/slither_fp_files/out1977.sol(739)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |    // the lastToken to the first position, and then dropping the element placed in the last position of the list
    |
  > |    _ownedTokensIndex[tokenId] = 0;
    |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(747)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Enumerable_custom':
    |
    |    _ownedTokensIndex[tokenId] = 0;
  > |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(748)

[33mWarning[0m for LockedEther in contract 'ERC721Full_custom':
    |
    |
  > |contract ERC721Full_custom is ERC721_custom, ERC721Enumerable_custom, ERC721Metadata_custom {
    |  constructor(string name, string symbol) ERC721Metadata_custom(name, symbol)
    |    public
  at /home/jiaming/slither_fp_files/out1977.sol(863)

[33mWarning[0m for UnhandledException in contract 'ERC721Full_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Full_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |
    |/**
  > | * @title IERC165
    | * @dev https://github.com/ethereum/EIPs/blob/master/EIPS/eip-165.md
    | */
  at /home/jiaming/slither_fp_files/out1977.sol(4)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |  
  at /home/jiaming/slither_fp_files/out1977.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(609)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    super._addTokenTo(to, tokenId);
    |    uint256 length = _ownedTokens[to].length;
  > |    _ownedTokens[to].push(tokenId);
    |    _ownedTokensIndex[tokenId] = length;
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(718)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    uint256 length = _ownedTokens[to].length;
    |    _ownedTokens[to].push(tokenId);
  > |    _ownedTokensIndex[tokenId] = length;
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(719)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    uint256 lastToken = _ownedTokens[from][lastTokenIndex];
    |
  > |    _ownedTokens[from][tokenIndex] = lastToken;
    |    // This also deletes the contents at the last position of the array
    |    _ownedTokens[from].length--;
  at /home/jiaming/slither_fp_files/out1977.sol(739)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |    // the lastToken to the first position, and then dropping the element placed in the last position of the list
    |
  > |    _ownedTokensIndex[tokenId] = 0;
    |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(747)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |
    |    _ownedTokensIndex[tokenId] = 0;
  > |    _ownedTokensIndex[lastToken] = tokenIndex;
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(748)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Full_custom':
    |
    |
  > |contract ERC721Full_custom is ERC721_custom, ERC721Enumerable_custom, ERC721Metadata_custom {
    |  constructor(string name, string symbol) ERC721Metadata_custom(name, symbol)
    |    public
  at /home/jiaming/slither_fp_files/out1977.sol(863)

[33mWarning[0m for LockedEther in contract 'ERC721Metadata_custom':
    |
    |
  > |contract ERC721Metadata_custom is ERC165, ERC721_custom, IERC721Metadata {
    |  // Token name
    |  string private _name;
  at /home/jiaming/slither_fp_files/out1977.sol(801)

[33mWarning[0m for UnhandledException in contract 'ERC721Metadata_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721Metadata_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata_custom':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata_custom':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata_custom':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata_custom':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata_custom':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata_custom':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |  
  at /home/jiaming/slither_fp_files/out1977.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721Metadata_custom':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(609)

[33mWarning[0m for LockedEther in contract 'ERC721_custom':
    | * @dev see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md
    | */
  > |contract ERC721_custom is ERC165, IERC721 {
    |
    |  using SafeMath for uint256;
  at /home/jiaming/slither_fp_files/out1977.sol(261)

[33mWarning[0m for UnhandledException in contract 'ERC721_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedEtherFlow in contract 'ERC721_custom':
    |      return true;
    |    }
  > |    bytes4 retval = IERC721Receiver(to).onERC721Received(
    |      msg.sender, from, tokenId, _data);
    |    return (retval == _ERC721_RECEIVED);
  at /home/jiaming/slither_fp_files/out1977.sol(595)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721_custom':
    |    require(msg.sender == owner || isApprovedForAll(owner, msg.sender));
    |
  > |    _tokenApprovals[tokenId] = to;
    |    emit Approval(owner, to, tokenId);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(337)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721_custom':
    |  function setApprovalForAll(address to, bool approved) public {
    |    require(to != msg.sender);
  > |    _operatorApprovals[msg.sender][to] = approved;
    |    emit ApprovalForAll(msg.sender, to, approved);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(360)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721_custom':
    |  function _addTokenTo(address to, uint256 tokenId) internal {
    |    require(_tokenOwner[tokenId] == address(0));
  > |    _tokenOwner[tokenId] = to;
    |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(554)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721_custom':
    |    require(_tokenOwner[tokenId] == address(0));
    |    _tokenOwner[tokenId] = to;
  > |    _ownedTokensCount[to] = _ownedTokensCount[to].add(1);
    |  }
    |
  at /home/jiaming/slither_fp_files/out1977.sol(555)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721_custom':
    |  function _removeTokenFrom(address from, uint256 tokenId) internal {
    |    require(ownerOf(tokenId) == from);
  > |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
    |    _tokenOwner[tokenId] = address(0);
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(568)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721_custom':
    |    require(ownerOf(tokenId) == from);
    |    _ownedTokensCount[from] = _ownedTokensCount[from].sub(1);
  > |    _tokenOwner[tokenId] = address(0);
    |  }
    |  
  at /home/jiaming/slither_fp_files/out1977.sol(569)

[33mWarning[0m for UnrestrictedWrite in contract 'ERC721_custom':
    |    require(ownerOf(tokenId) == owner);
    |    if (_tokenApprovals[tokenId] != address(0)) {
  > |      _tokenApprovals[tokenId] = address(0);
    |    }
    |  }
  at /home/jiaming/slither_fp_files/out1977.sol(609)

[33mWarning[0m for LockedEther in contract 'Percent':
    |}
    |
  > |library Percent {
    |
    |  struct percent {
  at /home/jiaming/slither_fp_files/out1977.sol(897)

[33mWarning[0m for LockedEther in contract 'SafeMath':
    | * @dev Math operations with safety checks that revert on error
    | */
  > |library SafeMath {
    |
    |  /**
  at /home/jiaming/slither_fp_files/out1977.sol(168)


