set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=$runtimepath

" load common file
source ~/tim.vim

set background=dark
"set guifont=Roboto_Mono_Light_for_Powerline:h12
set guifont=Cascadia_Code:h12

set columns=180
set lines=40

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

set termguicolors
colorscheme gruvbox
