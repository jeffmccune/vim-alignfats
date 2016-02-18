if !exists('g:enable_align_fats')
	let g:enable_align_fats = 1
endif

function! AlignFats()
	if g:enable_align_fats && exists(':Tabularize')
		let p = '^\s*\w+\s*[=+]>.*$'
		let column = strlen(substitute(getline('.')[0:col('.')],'\([^=]\|=[^>]\)','','g'))
		let position = strlen(matchstr(getline('.')[0:col('.')],'.*=>\s*\zs.*'))
		Tabularize /=>/l1
		normal! 0
		echo repeat('\([^=]\|=[^>]\)*=>',column).'\s\{-\}'.repeat('.',position)
		call search(repeat('\([^=]\|=[^>]\)*=>',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
	endif
endfunction

" Map leader key, then a to Align Fats.  Leader key is typically comma
noremap <leader>a :call AlignFats()<CR>
