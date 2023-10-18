"===================================================================[ Plug-ins ]
"
" # How to add plug-ins
" 1. Add new plug-ins to the list.
" 2. Either restart or :Plugin <new-plugin>
" 3. :PluginInstall

" Vundle init
autocmd Filetype vim setlocal shell=bash " Required for Vundle to work
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ahw/vim-pbcopy'                   " Copy to MacOS clipboard
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-buftabline'
Plugin 'dag/vim-fish'                     " Syntax highlighting
Plugin 'darfink/vim-plist'                " Syntax highlighting
Plugin 'elzr/vim-json'                    " Syntax highlighting
Plugin 'fatih/molokai'                    " Colorscheme
Plugin 'fatih/vim-go'
"Plugin 'ivalkeen/vim-simpledb'
Plugin 'jalvesaq/Nvim-R'                  " R REPL
Plugin 'junegunn/goyo.vim'                " Distraction free mode
Plugin 'martinda/Jenkinsfile-vim-syntax'  " Syntax highlighting
"Plugin 'mdempsky/gocode', {'rtp': 'vim/'} " Golang auto-completion
Plugin 'Shougo/neocomplete.vim'           " Golang auto-completion
Plugin 'mhartington/oceanic-next'         " Colorscheme
Plugin 'mustache/vim-mustache-handlebars' " Templating tool (used with jinja?)
Plugin 'nvie/vim-flake8'                  " Python linter
"Plugin 'scrooloose/nerdtree'              " File browser
Plugin 'stephpy/vim-yaml'                 " Syntax highlighting
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-abolish'                " Edit casing
Plugin 'tpope/vim-surround'               " Edit quoting and parentheses
Plugin 'tpope/vim-fugitive'               " Git wrapper
Plugin 'uarun/vim-protobuf'               " Syntax highlighting
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-rmarkdown'
"Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()


"=============================================================[ Plug-in config ]

" NerdTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:NERDTreeNodeDelimiter = "\u00a0" " https://www.reddit.com/r/vim/comments/a4yzyt/g_characters_prefixing_directory_and_file_names/

" vim-go
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1

" neocomplete (for Golang) // Haven't gotten this to work yet
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Nvim-R
autocmd BufRead,BufNewFile *.rmd set filetype=r
autocmd BufRead,BufNewFile *.rmd set syntax=rmarkdown
let vimrplugin_assign = 0

" Other
let g:vim_pbcopy_local_cmd = "pbcopy"

" Shortcuts
" The available <Plug> shortcuts are listed in
" https://github.com/fatih/vim-go/tree/master/ftplugin/go/{mappings.vim,commands.vim}
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>d <Plug>(go-def)
autocmd FileType go nmap <leader>f :GoFillStruct<CR>
autocmd FileType go nmap <leader>h <Plug>(go-doc-browser)
autocmd FileType go nmap <leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>v <Plug>(go-vet)
autocmd FileType go nmap <leader><Down> :cnext<CR>
autocmd FileType go nmap <leader><Up> :cprevious<CR>


"=================================================================[ Appearance ]

set ruler
set cursorline
set fillchars=vert:\│ " Vertical split char https://stackoverflow.com/a/15177256/840460
set number relativenumber

syntax on
set t_Co=256

"let g:oceanic_next_terminal_bold = 1
""let g:oceanic_next_terminal_italic = 1
"set background=light
"colorscheme OceanicNextLight
colorscheme OceanicNext

set background=dark
"colorscheme solarized


" Overrides if you want transparent background
highlight Normal ctermbg=none
highlight EndOfBuffer ctermbg=none
highlight VertSplit ctermbg=none

set colorcolumn=81

" Experiments with language specific syntax highlighting settings
"autocmd BufEnter * colorscheme solarized
"autocmd BufRead,BufEnter *.go,*.proto colorscheme molokai
"autocmd BufEnter *.go,*.proto hi LineNr ctermbg=none
"autocmd BufEnter * hi Normal ctermbg=none

" Jinja syntax highlighting
" http://stackoverflow.com/questions/11666170/vim-persistent-set-syntax-for-a-given-filetype
autocmd BufEnter *.sql.jinja2 setlocal syntax=sql

let g:molokai_original = 1
let g:rehash256 = 1


"================================================================[ Preferences ]

set autowrite " Automatictally save on :make
autocmd Filetype sql setlocal shell=bash " Required for ivalkeen/simpledb to work

set ignorecase
set smartcase
set hlsearch
autocmd Filetype go,proto setlocal noic  " Case sensitive search
" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
autocmd Filetype yaml setlocal cursorcolumn

" Jump back to position prior to searching
nmap § ``

set spelllang=en_gb
set dictionary+=/Users/christofer/git/ingest/cmd/datamodel/dictionary.txt

set nowrap          " No word wrapping
set hidden          " Allows buffer switching without save
set mouse=a         " Move cursor with mouse click etc.
set paste           " Disable indent when pasting code in insert mode

" Disable beeping
" http://vim.wikia.com/wiki/Disable_beeping
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

autocmd Filetype r setlocal iskeyword=@,47-57,_  " Treats . as new word boundary


"===========================================================[ Custom shortcuts ]

imap <c-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-l> 1z=

" Enter adds new lines without entering insert mode
" (Note: Shift+Enter does not work in the OSX terminals:
" https://stackoverflow.com/questions/16359878/vim-how-to-map-shift-enter)
nmap <Enter> o<Esc>k
"nmap <S-Enter> O<Esc>j
"nmap <c-s-Enter> i<CR><Esc>
"nmap <CR> o<Esc>k
"map <F2> :lcd %:p:h<CR>

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


:command W w
:command Bn bn
:command Bp bp

nmap <leader> ds"crm



"===========================================================[ Custom functions ]
" Called with `:call MyFunction()`

function Ascii2Unicode()
  " Requires:
  "  - brew install gnu-sed (because MacOS sed does not support uppercasing with \U)
  "  - brew install ascii
  %! gsed 's|\\\\u\\([0-9a-f]\{4\}\\)|0x\\U\\1|g' | ascii2uni -a X -q
endfunction

function DatamodelPatchClean()
  g/nullability/d
  %s/ "\(previous\|new\|diff\)":/\r"\1":/g
  %s/\\\\n/\r/g
  %s/\\\\t/\t/g
  %s/\\n/\r/g
  %s/\\t/\t/g
  %s/\\"/\"/g
endfunction

function! JsonPrettify()
  %!python3 -m json.tool
  call Ascii2Unicode()
endfunction

function! JsonMinify()
  %!jq -c .
endfunction

function JsonlPrettify()
  1,$-1s/$/,/
  1s/^/[/
  $s/$/]/
  call JsonPrettify()
endfunction

function MagentoPromoClean()
  s/^\s*"other_eligibility_rule": "\(.*\)",\?/\1/ge
  s/\\"/"/ge
  call JsonClean()
endfunction

function SlackClean()
  %s/[“”]/"/g
endfunction

function SpellAggressive()
  syn off
  set spell
endfunction

function SqlClean()
  s/\\"/"/ge " 'e' is for silent
  s/\\t/\t/ge
  s/\\n/\r/ge
endfunction

function XMLPrettify()
	%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
  g/^\s*$/d
endfunction

function UpdateCMD()
  let @a = ''
  g/UPDATECMD:/d A
  normal ggdG
  normal "ap
  %s/^.*UPDATECMD: //
  g/^\s*$/d
  sort u
endfunction


"================================================================[ Indentation ]

set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set breakindent " Adds indentation to hanging lines, https://stackoverflow.com/questions/1204149/smart-wrap-in-vim
set autoindent
filetype plugin indent on

autocmd Filetype go,proto setlocal noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd Filetype python,php,json setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4 conceallevel=0
autocmd Filetype python setlocal colorcolumn=121
autocmd Filetype Jenkinsfile setlocal expandtab
