scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


function! operator#jump_side#head(motion_wise, ...)
	call cursor(getpos("'[")[1:])
	if get(a:, 1, 0)
		let save_ww = &whichwrap
		set whichwrap=h
		try
			normal! h
		finally
			let &whichwrap = save_ww
		endtry
	endif
endfunction

function! operator#jump_side#head_out(motion_wise)
	return operator#jump_side#head(a:motion_wise, 1)
endfunction


function! operator#jump_side#tail(motion_wise, ...)
	call cursor(getpos("']")[1:])
	if get(a:, 1, 0)
		let save_ww = &whichwrap
		set whichwrap=l
		try
			normal! l
		finally
			let &whichwrap = save_ww
		endtry
	endif
endfunction

function! operator#jump_side#tail_out(motion_wise)
	return operator#jump_side#tail(a:motion_wise, 1)
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
