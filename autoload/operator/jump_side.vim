scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


function! operator#jump_side#head(motion_wise)
	call cursor(getpos("'[")[1:])
endfunction


function! operator#jump_side#tail(motion_wise)
	call cursor(getpos("']")[1:])
endfunction




let &cpo = s:save_cpo
unlet s:save_cpo
