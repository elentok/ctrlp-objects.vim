if exists('g:loaded_ctrlp_views') && g:loaded_ctrlp_views
  finish
endif
let g:loaded_ctrlp_views = 1

call add(g:ctrlp_ext_vars, {
  \ 'init': 'CtrlP_FindFiles("*view*")',
  \ 'accept': 'ctrlp#acceptfile',
  \ 'type': 'path'
  \ })

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
func! ctrlp#views#id()
  return s:id
endfunc
