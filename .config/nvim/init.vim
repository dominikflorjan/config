set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'stevearc/vim-arduino'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'chiel92/vim-autoformat'


" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Text editing/All languages
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdcommenter'

" Latex
Plug 'lervag/vimtex'

" Syntax 
Plug 'w0rp/ale'

" Look and feel
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'yggdroot/indentline'
call plug#end()

" change window title to what u are doing
set title

" system name
" let name = system('uname -n')

"if name =~ "dominik-XPS-15-9560"
"elseif name =~ "dominik-MS-7C02"
"endif

set mouse=a
syntax on 
syntax spell toplevel
set spell spelllang=pl,en_us

" Remaps
imap jj <Esc>:w<CR>

set clipboard=unnamedplus
set number relativenumber
" Color scheme and change spelling highlight
colorscheme deus
" Airline theme
let g:airline_theme='papercolor'
hi Normal guibg=NONE ctermbg=NONE
hi SpellBad cterm=underline

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" Python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Plugins 
"
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_compiler_progname='nvr'
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'
"let g:vimtex_syntax_conceal_default=0 " Conceal latex characters OFF

" You complete me 
" Hover toggle menu
nmap <leader>D <plug>(YCMHover)

"otwórz nerdtree na ctr n
map <C-n> :NERDTreeToggle<cr>

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-n>"
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="/home/dominik/.vim/plugged/vim-snippets/snippets"

" Arduino
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>
let g:arduino_dir = '/home/dominik/arduino-1.8.13'
