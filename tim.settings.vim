" Some global set ups for Vundle and what not
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

let g:airline_theme='molokai'

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'DrawIt'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
call vundle#end()

filetype plugin indent on

" Easy motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap <Leader>f <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" Spacing delimeter
let g:NERDSpaceDelims = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Prompts
let PROMPT="vim: "

" helpful maps
nmap <S-Tab> <<
imap <S-Tab> <C-d>

" NERDTree

let NERDTreeWinSize=60
let NERDTreeQuitOnOpen=1
noremap <silent> <Leader>t :set columns=180<CR>:NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufEnter * wincmd p

" Comments
let g:EnhCommentifyPretty = 'Yes'
let g:EnhCommentifyBindInNormal = 'Yes'
let g:EnhCommentifyBindInVisual = 'Yes'
let g:EnhCommentifyBindInInsert = 'No'

" show tabs
set list

" Folds
set foldmethod=indent
set fdc=1
set nofoldenable

" Tabs and indents
set expandtab
set tabstop=4
set sw=4
set cinoptions+=(0,W1s

" Completion
set completeopt=longest,menuone
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"
inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>"

" This lets us backspace past lines
set backspace=2

set ff=unix
set ruler

" have some borders when doing z <key> commands
set scrolloff=4

" no case
set ignorecase

" get rid of messages
set ch=2
set laststatus=2

" line numbers
set number

" auto complete settings
set cpt=.,b,u,i,]

" syntax settings
let c_comment_strings=1
syntax on
set hlsearch
set incsearch
set showfulltag

" set some line options
set showbreak=++++

" some cleanup stuff
set shortmess=imnrwx

" set the guioptions.
set guioptions=aeirM

" Lets keep some global viminfo
set viminfo='20,\"50

" Map `7 to underline with C++-style comments
nmap `7 yyPj:.,. s/./-/g<CR>r/lr/lr 0:let@/=histget( '/', -2 )<CR>:ec<CR>
vmap `7 <Esc>`7

" Map `8 to underline with C-style comments
nmap `8 yyPj:.,. s/./*/g<CR>r/$r/0:let@/=histget( '/', -2 )<CR>:ec<CR>
vmap `8 <Esc>`8

" Map `9 to have a line of C++-style comments inserted above
nmap `9 O// <Esc>A-<Esc>75.0
imap `9 <Esc>`9
vmap `9 <Esc>`9

" Map `0 to have a line of C-style comments inserted above
nmap `0 O/<Esc>A*<Esc>76.A/<Esc>0
imap `0 <Esc>`0
vmap `0 <Esc>`0

" Map _C to clear search
nmap _C :let@/=''<CR>:ec<CR>
vmap _C <Esc>_C

" Map _U to just have 79 - underlining
nmap _U o<Esc>I-<Esc>78.0
vmap _U <Esc>_U

" Mapping for switching buffers
nmap <F6> :previous<CR>
imap <F6> <C-O>:previous<CR>
nmap <F7> :next<CR>
imap <F7> <C-O>:next<CR>
nmap <F8> :bprevious<CR>
imap <F8> <C-O>:bprevious<CR>
nmap <F9> :bnext<CR>
imap <F9> <C-O>:bnext<CR>

" map prev/next tag
nmap tn :tn<CR>
nmap tp :tp<CR>

" map for grep.
nmap gn :cnext<CR>
nmap gp :cprev<CR>

" maps for search
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" Put all the swap files in g:\temp
" set dir=$TEMP
set backupdir=/tmp
set directory=/tmp

" set the tag search
set tags=$VIM\doc\tags,$VIM_TAG_FILES,.\tags

" EasyTags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
nmap <silent> <leader>b :TagbarToggle<CR>

" set the path to search for include files
set path=.,$VIM_FILES_PATH

" set wildignore
set wildignore+=*.class

" Autocmds for nerdtree
" TODO: This doesn't work for some reason.
"autocmd BufRead *.java,*.cs,*.c,*.cpp,*.h,*.hpp,*.idl,*.vb,*.rb,*.erb,*.css,*.html,*.xml,*.vim,*.asp,*.aspx execute ":NERDTreeToggle"

" Autocmds for F# files
autocmd BufRead,BufNewFile *.fs,*.fsx,*.fsi,*.ml set mat=2 sm

" Autocmds for C/C++ files.
autocmd BufRead,BufNewFile *.java,*.cs,*.c,*.cpp,*.h,*.hpp,*.idl set sm mat=2 sw=4

" Autocmds for VB files
autocmd BufRead,BufNewFile *.vb setlocal filetype=vbnet

" Autocmds for Ruby files
autocmd BufRead,BufNewFile *.rb set sw=2 tabstop=2
autocmd BufRead,BufNewFile *.erb set sw=2 tabstop=2
autocmd BufRead,BufNewFile *.yml set sw=2 tabstop=2
autocmd FileType ruby,eruby call UseRubyIndent()

" Autocmds for CSS
autocmd BufRead,BufNewFile *.html set sw=2 tabstop=2
autocmd BufRead,BufNewFile *.css set sw=2 tabstop=2

" Autocmds for JS
autocmd BufRead,BufNewFile *.js set sw=2 tabstop=2
autocmd BufRead,BufNewFile *.json set sw=2 tabstop=2

" Autocmds for asp/aspx
autocmd BufRead,BufNewFile *.asp,*.aspx set sw=4 tabstop=4

" Autocmds for makefiles
autocmd BufRead,BufNewFile makefile,*.mak,*.mif set noexpandtab tabstop=4 sw=4

" Autocmds XML
autocmd BufRead,BufNewFile *.xml set sw=2 tabstop=2

" Autocmds XAML
autocmd BufRead,BufNewFile *.xaml set sw=2 tabstop=2

" Autocmds VIM
autocmd BufRead,BufNewFile *.vim set sw=4 tabstop=4

" .<TAB> replacements.
autocmd BufRead,BufNewFile *.cpp,*.h imap .<tab> this->
autocmd BufRead,BufNewFile *.cs,*.java imap .<tab> this.
autocmd BufRead,BufNewFile *.vb imap .<tab> Me.

" All files
autocmd BufRead,BufNewFile * set fo=ql

" On entering a buffer, change the current directory to the file.
" I'm using a :CD command rather then BufEnter for now.
" autocmd BufEnter * execute ":lcd " . expand("%:p:h")
com! CD cd %:p:h

" some options
set cpo+=$
