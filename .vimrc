execute pathogen#infect()

filetype plugin indent on

colorscheme molokai

syntax on

" Tags
set tags=./tags;

" AutoLoad cscope
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
	set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
     endif
endfunction
au BufEnter /* call LoadCscope()

" Key Mapping
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
