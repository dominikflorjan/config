" For coc completion
" let g:ale_disable_lsp = 1

call plug#begin('~/.vim/plugged')

" General
Plug 'scrooloose/nerdtree'
Plug 'stevearc/vim-arduino'
Plug 'easymotion/vim-easymotion'

" Syntastic is so slow
"Plug 'scrooloose/syntastic'
" lets switch to ale to check it out
Plug 'w0rp/ale'

" FZF
Plug 'ctrlpvim/ctrlp.vim'

" Git
Plug 'tpope/vim-fugitive'

" Text editing/All languages
" Auto close quotes, brackets etc
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'

" Completion plugins
" Plug 'valloric/youcompleteme'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Switching to neovim in built LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Snips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Latex
Plug 'lervag/vimtex'

" Look and feel
Plug 'pangloss/vim-javascript'
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

" Very important to get completion to work properly
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']

lua require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}

" Give more space for displaying messages.
set cmdheight=1

" Strong shit with <leader>u to show \"diffs\" or just undo history
set undodir=$HOME/.vim/undodir
set undofile

" Color scheme and change spelling highlight
colorscheme deus
hi Normal guibg=NONE
hi SpellBad cterm=underline

" Python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" Removes trailing spaces
function TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction

" Remaps
imap jj <Esc>:w<CR>

nnoremap <leader>sv :source %MYVIMRC<CR>

nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
" Show changes in document
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" Plugins
" Syntastic
" let g:syntastic_mode_map = {
    " \ "mode": "active",
    " \ "passive_filetypes": ["tex"] }
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 1

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDcompactSexyComs = 1

" Vimtex
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
let g:NERDTreeWinSize=20

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-n>"
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="/home/dominik/.vim/my_snips"
let g:UltiSnipsSnippetDirectories=["/home/dominik/.vim/my_snips"]

" Arduino
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
