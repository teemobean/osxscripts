"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'toyamarinyon/vim-swift'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" load common file
source ~/tim.vim

set guifont=Monaco:h12

" set columns
"set lines=65

hi Normal guifg=lightgrey guibg=black
hi Search guibg=red guifg=black
hi Incsearch guibg=black guifg=lightblue
hi Visual guifg=lightgrey guibg=black
hi NonText guifg=#800000 guibg=black

" C highlights
hi Type guifg=darkgreen

" set list
"set listchars=extends:+,tab:›•,trail:•
set listchars=extends:+,tab:>-,trail:+

let molokai_original = 1
colorscheme inkpot
