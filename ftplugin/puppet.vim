if !exists('g:puppet_align_hashes')
  let g:puppet_align_hashes = 1
endif

function! s:puppetalign()
  if g:puppet_align_hashes && exists('*AlignFats')
    call PuppetAlign()
  endif
endfunction

inoremap <buffer> <silent> > ><Esc>:call <SID>puppetalign()<CR>a
