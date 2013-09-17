if exists('g:loaded_ctrlp_presenters') && g:loaded_ctrlp_presenters
  finish
endif
let g:loaded_ctrlp_presenters = 1

call add(g:ctrlp_ext_vars, {
  \ 'init': 'CtrlP_FindFiles("*presenter*")',
  \ 'accept': 'ctrlp#acceptfile',
  \ 'type': 'path'
  \ })

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
func! ctrlp#presenters#id()
  return s:id
endfunc
