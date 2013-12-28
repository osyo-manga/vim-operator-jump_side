scriptencoding utf-8
if exists('g:loaded_jump_side')
  finish
endif
let g:loaded_jump_side = 1

let s:save_cpo = &cpo
set cpo&vim


call operator#user#define('jump-head', 'operator#jump_side#head')
call operator#user#define('jump-tail', 'operator#jump_side#tail')


let &cpo = s:save_cpo
unlet s:save_cpo
