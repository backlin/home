" Vundle plug-in manager (wants to be loaded first)
so ~/.vim/vimrc_vundle.vim

" Great base config
so ~/.vim/vimrc_amir.vim

"--------------------------------------------------------[ Personal appearance ]

colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=light
if exists('+colorcolumn')
    set colorcolumn=81
endif

"----------------------------------------------------[ Mitt och Björns fuffens ]

" Screen plugin
"map \s :ScreenShell
"map \l :ScreenSend

" Vim's R integration
"let vimrplugin_noscreenrc = 1   " Use ~/.screenrc instead of the plugin's
"let vimrplugin_tmux = 0 " If you want to use screen instead of tmux
let vimrplugin_notmuxconf = 1 
let vimrplugin_assign = 0

" Enter adds new lines without entering insert mode
nmap <C-Enter> O<Esc>j
nmap <c-s-Enter> a<CR><Esc>
nmap <CR> o<Esc>k
map <F2> :lcd %:p:h<CR>

set mouse=a         " Enables mouse in terminal vim
set number          " Line numbers
set nowrap          " No word wrapping
set cursorline      " Highlight current line
set showtabline=1   " Only show tabline if more than one tab is open

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <s-Space> :nohlsearch<Bar>:echo<CR>

" Extra keybindings for moving with selected section
nmap <c-s-down> mz:m+<cr>`z
nmap <c-s-up> mz:m-2<cr>`z
vmap <c-s-down> :m'>+<cr>`<my`>mzgv`yo`z
vmap <c-s-up> :m'<-2<cr>`>my`<mzgv`yo`z
nmap <c-s-left> <<
nmap <c-s-right> >>
vmap <c-s-left> <<<Esc>gv
vmap <c-s-right> >><Esc>gv

" Move between splits with Alt+<arrow>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
imap <A-Up> <Esc><A-Up>a
imap <A-Down> <Esc><A-Down>a
imap <A-Left> <Esc><A-Left>a
imap <A-Right> <Esc><A-Right>a

function! NoIndentGQ()
    try
        s/^##' //
    catch
    endtry
    set textwidth=76
    set noai
    normal! gqip
    set ai
    set tw=500
endfunction
function! NoIndentGQRange() range
    try
        execute a:firstline . "," . a:lastline . "s/^##' //"
    catch
    endtry
    set textwidth=76
    set noautoindent
    execute "normal gvgq"
    set ai
    set tw=500
endfunction
nmap <C-g> :call NoIndentGQ()<CR>
command! -range NoIndGQ <line1>,<line2>call NoIndentGQRange()
vmap <C-g> :NoIndGQ<CR>
imap <C-BS> <Esc>lc^

" Convert Rd `tabular` blocks to `describe` blocks
function! Tabular2describe() range
    execute a:firstline . "," . a:lastline . "s/\\\\tabular{[lcr]\\{2}}{/\\\\describe{/"
    execute a:firstline . "," . a:lastline . "s/\\( \\+\\)\\(.\\{-}\\) *\\\\tab *\\(\\_.\\{-}\\) *\\\\cr/\\1\\\\item{\\2}{\\3}/"
endfunction
command! -range Tab2desc <line1>,<line2>call Tabular2describe()

" Jump back to position prior to searching
nmap § ``

function CleanBib()
    %s/abstract\_[^}]\+},\n//e
    %s/file\_[^}]\+},\n//
    %s/keywords\_[^}]\+},\n//e
    %s/{\{2,\}/{/ge
    %s/}\{2,\}/}/ge
    %g/^\w/>
    " Multiple uppercase letter words in titles are reduced to lower case, e.g. 'DNA'
    " Wrap them in brackets to ensure correct rendering
    %g/title\s\?=/s/\([A-Z][A-Z0-9]\+\)/{\1}/ge
endfunction

function AuthorAbbr() range
    s/\(\w\)\w*[ \~]\(\w\)\w*\.\?[ \~]\([a-zA-ZåäöÅÄÖéó-]\+\)/\3,\~\1.\2./ge "Lars K. Blad --> Blad, L K.
    s/\(\w\)\w*-\(\w\)\w*[ \~]\([a-zA-ZåäöÅÄÖéó-]\+\)/\3,\~\1-\2./ge "Lars-Kenneth Blad --> Blad, L-K.
    s/\(\w\)\w*[ \~]\([a-zA-ZåäöÅÄÖéó-]\+\)/\2,\~\1./ge              "Lars Stenberg --> Stenberg, L.
endfunction

" Add spaces around '='
function SpaceAssingments()
    %s/\([^ ]\)=/\1 =/ge
    %s/=\([^ ]\)/= \1/ge
endfunction

" Lilypond
filetype off
set runtimepath+=/usr/share/lilypond/2.16.2/vim
filetype on
syntax on

