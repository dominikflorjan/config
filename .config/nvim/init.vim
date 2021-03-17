call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'stevearc/vim-arduino'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'

" FZF
Plug 'ctrlpvim/ctrlp.vim'

" Git
Plug 'tpope/vim-fugitive'

" Text editing/All languages
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'valloric/youcompleteme'

" Latex
Plug 'lervag/vimtex'
" :NeoFormat to format file
Plug 'sbdchd/neoformat'
" Do i need that?
Plug 'chiel92/vim-autoformat'

" Syntax 
Plug 'w0rp/ale'

" Look and feel
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'yggdroot/indentline'
" i3 config syntax hi
Plug 'PotatoesMaster/i3-vim-syntax'
" fish syntax hi
Plug 'dag/vim-fish'
call plug#end()

filetype plugin on

" Tinkering with functions
augroup latexFix
    autocmd!
    autocmd FileType tex call Fix()
augroup END

function! Fix()
    echom 'called'
endfunction

" Remaps
imap jj <Esc>:w<CR>

nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
" Show changes in document
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" change window title to what u are doing
set title

set colorcolumn=80

set mouse=a
syntax on 
syntax spell toplevel
set spell spelllang=pl,en_us
set clipboard=unnamedplus "enable clipboard
set number relativenumber
set noswapfile
set nowrap "do not wrap lines
set smartindent 
set showbreak=>>
set breakindent
set wrap
set smarttab
set expandtab "Convert tabs to spaces 
set shiftwidth=4
set softtabstop=4 
set tabstop=4 
set incsearch "show seach results

" Strong shit with <leader>u to show \"diffs\" or just undo history
set undodir=$HOME/.vim/undodir
set undofile

" Color scheme and change spelling highlight
colorscheme deus
hi Normal guibg=NONE ctermbg=NONE
hi SpellBad cterm=underline

" Python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Plugins 
"
" Ale
" let g:ale_fix_on_save = 1 
"
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : './temp',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
" Vimtex
let g:tex_flavor='latex'
let g:vimtex_syntax_conceal_default = 0
let g:vimtex_compiler_progname='nvr'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'

" You complete me 
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Hover toggle menu
nmap <leader>D <plug>(YCMHover)
" let g:ycm_global_ycm_extra_conf = '$HOME/.config/ycm/.ycm_extra_conf.py'

"otwórz nerdtree na ctr n
map <C-n> :NERDTreeToggle<cr>

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-n>"
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="/home/dominik/.vim/my_snips"
let g:UltiSnipsSnippetDirectories=["/home/dominik/.vim/my_snips"]

" Arduino
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>

" Airline theme
let g:airline_theme='papercolor'
let g:airline#extensions#ale#enabled = 1
