"-------------------------------------------------------------------[ Plug-ins ]

" Pathogen
execute pathogen#infect()
" Useful plugins (put in ~/.vim/bundle):

" Plug-in specific
let g:UltiSnipsEditSplit="vertical"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"-----------------------------------------------------------------[ Appearance ]

syntax on
set background=light
colorscheme solarized
filetype plugin indent on

if exists('+colorcolumn')
    set colorcolumn=81
endif


"----------------------------------------------------------------[ Preferences ]

set hlsearch
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Jump back to position prior to searching
nmap § ``

set spelllang=en_gb
set nowrap          " No word wrapping
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set hidden          " Allows buffer switching without save

" Language specific settings
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

"-----------------------------------------------------------[ Custom shortcuts ]

imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-l> 1z=

"" Enter adds new lines without entering insert mode
"nmap <C-Enter> O<Esc>j
"nmap <c-s-Enter> i<CR><Esc>
"nmap <CR> o<Esc>k
"map <F2> :lcd %:p:h<CR>

" Copy the entire buffer to the clipboard (on Mac)
nnoremap <c-y> gg"*yG<c-o><c-o>
" Copy the selected text to the clipboard (on Mac)
vnoremap <c-y> "*yG<c-o><c-o>

" " Extra keybindings for moving with selected section
" nmap <c-s-down> mz:m+<cr>`z
" nmap <c-s-up> mz:m-2<cr>`z
" vmap <c-s-down> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <c-s-up> :m'<-2<cr>`>my`<mzgv`yo`z
" nmap <c-s-left> <<
" nmap <c-s-right> >>
" vmap <c-s-left> <<<Esc>gv
" vmap <c-s-right> >><Esc>gv

" Move between splits with Alt+<arrow>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap <C-J> <C-W><C-J>
inoremap <C-K> <C-W><C-K>
inoremap <C-L> <C-W><C-L>
inoremap <C-H> <C-W><C-H>
vnoremap <C-J> <C-W><C-J>
vnoremap <C-K> <C-W><C-K>
vnoremap <C-L> <C-W><C-L>
vnoremap <C-H> <C-W><C-H>
