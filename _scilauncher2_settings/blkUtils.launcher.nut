function copyBlk(srcBlock, resBlock, overwrite = true) {
  if (!srcBlock || !resBlock) {
    ::debug("copyBlk: srcBlock or resBlock is null")
    return
  }
  local prevBlockName = null
  local removedBlocks = []

  for (local i = 0; i < srcBlock.blockCount(); i++) {
    local block = srcBlock.getBlock(i)
    local blockName = block.getBlockName()
	
    if (prevBlockName != blockName && overwrite) {
	  ::debug(concat("copyBlk: resBlock = Array length of removed blockNames = ", removedBlocks.len(), " and found index = ", removedBlocks.indexof(blockName)))
	  if (removedBlocks.indexof(blockName) == null) {
	    ::debug(concat("copyBlk: resBlock = Prev block not equal to current block, removing all blocks with name = ", blockName))
        resBlock.removeBlock(blockName)
	    removedBlocks.append(blockName)
	  }
	  else
	    ::debug(concat("copyBlk: resBlock = Prev block not equal to current block, but block was already removed = ", blockName))
    }
	
    resBlock[blockName] <- block
	::debug(concat("copyBlk: resBlock = appended block = " blockName))
	
	prevBlockName = blockName
  }
  for (local i = 0; i < srcBlock.paramCount(); i++) {
    local paramName = srcBlock.getParamName(i)
	::debug(concat("copyBlk: resBlock = paramName found = ", resBlock?[paramName]))
    if (resBlock?[paramName] == null)
      resBlock[paramName] <- srcBlock[paramName]
    else if (overwrite)
      resBlock[paramName] = srcBlock[paramName]
  }
}