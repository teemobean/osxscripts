" load common file
source ~/tim.vim

set guifont=Monaco:h12

set columns=120
set lines=40

hi Normal guifg=lightgrey guibg=black
hi Search guibg=red guifg=black
hi Incsearch guibg=black guifg=lightblue
hi Visual guifg=lightgrey guibg=black
hi NonText guifg=#800000 guibg=black

" C highlights
hi Type guifg=darkgreen

" set list
"set listchars=extends:+,tab:��,trail:�
set listchars=extends:+,tab:>-,trail:+

let molokai_original = 1
colorscheme inkpot
