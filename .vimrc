runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

filetype plugin indent on
syntax on

set number
set nowrap
set cursorline
set background=dark

let g:solarized_termcolors=256
let g:solarized_termtrans=1
color solarized

let g:airline_theme='base16'

nmap <C-e> :NERDTreeToggle<CR>
nmap <C-Right> <C-w>l 
nmap <C-Left>  <C-w>h
