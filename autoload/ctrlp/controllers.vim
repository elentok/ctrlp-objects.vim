if exists('g:loaded_ctrlp_controllers') && g:loaded_ctrlp_controllers
  finish
endif
let g:loaded_ctrlp_controllers = 1

call add(g:ctrlp_ext_vars, {
  \ 'init': 'CtrlP_FindFiles("*controller*")',
  \ 'accept': 'ctrlp#acceptfile',
  \ 'type': 'path'
  \ })

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
func! ctrlp#controllers#id()
  return s:id
endfunc
