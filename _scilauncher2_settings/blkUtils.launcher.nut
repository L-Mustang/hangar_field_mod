function copyFromDataBlock(fromDataBlock, toDataBlock, override = true) {
  if (!fromDataBlock || !toDataBlock) {
    :debug("ERROR: copyFromDataBlock: fromDataBlock or toDataBlock doesn't exist")
    return
  }
  local prevBlockName = null
  local removedBlocks = []

  for (local i = 0; i < fromDataBlock.blockCount(); i++) {
    local block = fromDataBlock.getBlock(i)
    local blockName = block.getBlockName()
	
    if (prevBlockName != blockName && override) {
	  ::debug(concat("copyFromDataBlock: toDataBlock = Array length of removed blockNames = ", removedBlocks.len(), " and found index = ", removedBlocks.indexof(blockName)))
	  if (removedBlocks.indexof(blockName) == null) {
	    ::debug(concat("copyFromDataBlock: toDataBlock = Prev block not equal to current block, removing all blocks with name = ", blockName))
        toDataBlock.removeBlock(blockName)
	    removedBlocks.append(blockName)
	  }
	  else
	    ::debug(concat("copyFromDataBlock: toDataBlock = Prev block not equal to current block, but block was already removed = ", blockName))
    }
	
    toDataBlock[blockName] <- block
	::debug(concat("copyFromDataBlock: toDataBlock = appended block = " blockName))
	
	prevBlockName = blockName
  }
  for (local i = 0; i < fromDataBlock.paramCount(); i++) {
    local paramName = fromDataBlock.getParamName(i)
	::debug(concat("copyFromDataBlock: toDataBlock = paramName found = ", toDataBlock?[paramName]))
    if (toDataBlock?[paramName] == null)
      toDataBlock[paramName] <- fromDataBlock[paramName]
    else if (override)
      toDataBlock[paramName] = fromDataBlock[paramName]
  }
}