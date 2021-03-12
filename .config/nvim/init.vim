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
Plug 'sbdchd/neoformat'

" Syntax 
Plug 'w0rp/ale'

" Look and feel
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'yggdroot/indentline'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'dag/vim-fish'
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
let g:airline#extensions#ale#enabled = 1
hi Normal guibg=NONE ctermbg=NONE
hi SpellBad cterm=underline

set smarttab
set expandtab
set shiftwidth=4
set tabstop=4

" Python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Plugins 
"
" Ale
"let g:ale_fix_on_save = 1 
"
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:vimtex_syntax_conceal_default = 0
let g:vimtex_view_method='zathura'
let g:vimtex_compiler_progname='nvr'
"let g:vimtex_indent_enabled=1
"let g:vimtex_format_enabled=1
set conceallevel=0
"let g:tex_conceal='abdmg'
"let g:vimtex_syntax_conceal_default=0 " Conceal latex characters OFF

" You complete me 
" Hover toggle menu
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <leader>D <plug>(YCMHover)
let g:ycm_global_ycm_extra_conf = '$HOME/.config/ycm/.ycm_extra_conf.py'

"otwórz nerdtree na ctr n
map <C-n> :NERDTreeToggle<cr>

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-n>"
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="/home/dominik/.vim/plugged/vim-snippets/snippets"

" Arduino
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>
