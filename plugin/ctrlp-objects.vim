" File: plugin/ctrlp-objects.vim

func! CtrlP_FindFiles(pattern)
  let exclude = '(components|.sass-cache)'
  return split(system("find . -ipath '" . a:pattern . "' -type f | egrep -v '/" . exclude . "/'"), '\n')
endfunc

command! CtrlPModels call ctrlp#init(ctrlp#models#id())
command! CtrlPViews call ctrlp#init(ctrlp#views#id())
command! CtrlPControllers call ctrlp#init(ctrlp#controllers#id())
command! CtrlPPresenters call ctrlp#init(ctrlp#presenters#id())
command! CtrlPTemplates call ctrlp#init(ctrlp#templates#id())
