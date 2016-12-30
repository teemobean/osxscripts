" Some global set ups for Vundle and what not
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
call vundle#end()

filetype plugin indent on

" Prompts
let PROMPT="vim: "

" helpful maps
nmap <S-Tab> <<
imap <S-Tab> <C-d>

" NERDTree

let NERDTreeWinSize = 60
" Instead, use an autocmd
" let NERDTreeStartByDefault=1
noremap <silent> <F5> :set columns=181<CR>:NERDTreeToggle<CR>

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

" Completion
set completeopt=longest,menuone 
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>" 
inoremap <expr> <c-n> pumvisible() ? "\<lt>c-n>" : "\<lt>c-n>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>" 
inoremap <expr> <m-;> pumvisible() ? "\<lt>c-n>" : "\<lt>c-x>\<lt>c-o>\<lt>c-n>\<lt>c-p>\<lt>c-r>=pumvisible() ? \"\\<lt>down>\" : \"\"\<lt>cr>" 

" don't auto complete on ., .->, etc.

let g:OmniCpp_MayCompleteDot = 0
let g:OmniCpp_MayCompleteArrow = 0
let g:OmniCpp_MayCompleteScope = 0

" Diff


" This lets us backspace past lines
set backspace=2

" Autoindent is good.
set ai

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
set cino=:0(4

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

" Map _O to do p4 edit
nmap _O :! sd edit <C-R>%<CR>:e <C-R>%<CR>
nmap _I :! tf edit <C-R>%<CR>:e <C-R>%<CR>

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
set tags=$VIM\doc\tags,$VIM_TAG_FILES,$DEPOTROOT\tags,.\tags

" set the path to search for include files
set path=.,$VIM_FILES_PATH

" we want a dark background
" set background=dark

set expandtab
set tabstop=4
set sw=4

" Autocmds for nerdtree
" TODO: This doesn't work for some reason.
"autocmd BufRead *.java,*.cs,*.c,*.cpp,*.h,*.hpp,*.idl,*.vb,*.rb,*.erb,*.css,*.html,*.xml,*.vim,*.asp,*.aspx execute ":NERDTreeToggle"

" Autocmds for F# files
autocmd BufRead,BufNewFile *.fs,*.fsx,*.fsi,*.ml set mat=2 sm

" Autocmds for C/C++ files.
autocmd BufRead,BufNewFile *.java,*.cs,*.c,*.cpp,*.h,*.hpp,*.idl set cindent sm mat=2 sw=4
autocmd FileType c,cpp,java,cs call UseCEndToken()

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
autocmd BufRead,BufNewFile *.js set sw=4 tabstop=4

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
