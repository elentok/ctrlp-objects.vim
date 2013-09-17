if exists('g:loaded_ctrlp_templates') && g:loaded_ctrlp_templates
  finish
endif
let g:loaded_ctrlp_templates = 1

call add(g:ctrlp_ext_vars, {
  \ 'init': 'CtrlP_FindFiles("*template*")',
  \ 'accept': 'ctrlp#acceptfile',
  \ 'type': 'path'
  \ })

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
func! ctrlp#templates#id()
  return s:id
endfunc
