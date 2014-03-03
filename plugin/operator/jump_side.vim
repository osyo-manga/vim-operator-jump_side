scriptencoding utf-8
if exists('g:loaded_jump_side')
  finish
endif
let g:loaded_jump_side = 1

let s:save_cpo = &cpo
set cpo&vim


call operator#user#define('jump-head', 'operator#jump_side#head')
call operator#user#define('jump-tail', 'operator#jump_side#tail')

call operator#user#define('jump-head-out', 'operator#jump_side#head_out')
call operator#user#define('jump-tail-out', 'operator#jump_side#tail_out')

call operator#user#define('jump-toggle', 'operator#jump_side#toggle', ":let g:operator_jump_side_toggle_start_pos = getpos('.')")


let &cpo = s:save_cpo
unlet s:save_cpo
