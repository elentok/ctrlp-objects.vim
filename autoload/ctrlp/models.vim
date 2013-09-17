if exists('g:loaded_ctrlp_models') && g:loaded_ctrlp_models
  finish
endif
let g:loaded_ctrlp_models = 1

call add(g:ctrlp_ext_vars, {
  \ 'init': 'CtrlP_FindFiles("*model*")',
  \ 'accept': 'ctrlp#acceptfile',
  \ 'type': 'path'
  \ })

let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)
func! ctrlp#models#id()
  return s:id
endfunc
