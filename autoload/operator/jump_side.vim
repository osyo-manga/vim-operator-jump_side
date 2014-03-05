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


function! operator#jump_side#toggle(motion_wise, ...)
	let pos = []
	if g:operator_jump_side_toggle_start_pos == getpos("']")
		let pos = getpos("'[")[1:]
	endif
	if g:operator_jump_side_toggle_start_pos == getpos("'[")
		let pos = getpos("']")[1:]
	endif
	if empty(pos)
		return
	endif
	if a:motion_wise == "line"
		call cursor(pos[0], 1)
	else
		call cursor(pos)
	endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
