call plug#begin('~/.vim/plugged')

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'

" SEE EVERYTHING aka telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'preservim/nerdtree'

" Git
Plug 'tpope/vim-fugitive'
" Text editing/All languages
" Auto close quotes, brackets etc
Plug 'raimondi/delimitmate'
Plug 'preservim/nerdcommenter'
Plug 'mbbill/undotree'

" NEOVIM LSP
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
" Plug 'nvim-lua/completion-nvim'

Plug 'liuchengxu/vim-which-key'

Plug 'folke/lua-dev.nvim'

" Snips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Latex
Plug 'lervag/vimtex'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'akinsho/nvim-bufferline.lua'

" Look and feel
Plug 'morhetz/gruvbox'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'Mofiqul/vscode.nvim'

Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'dag/vim-fish'
call plug#end()

filetype plugin on
syntax on

lua require("config")

" Change leader key to spacebar
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" Using lua functions for telescope
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" compe setup
set completeopt=menuone,noselect
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm({ 'keys': "\<Plug>delimitMateCR", 'mode': '' })
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" Color scheme and change spelling highlight
let g:vscode_style = "dark"
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
hi SpellBad cterm=underline

" Removes trailing spaces
function TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction

" Remaps
imap kj <Esc>

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+G

nnoremap <leader>d "_d
vnoremap <leader>d "_d

nnoremap <leader>sv :source /home/dominik/.config/nvim/init.vim<CR>

" better moving between splits
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
" Show changes in document
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDcompactSexyComs = 1

" Vimtex
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_manual = 1
let g:vimtex_fold_types = {
       \ 'preamble' : {'enabled' : 0},
       \ 'envs' : {
       \   'blacklist' : ['figure', 'table'],
       \ },
       \}
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : './temp',
            \ 'callback' : 1,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'hooks' : [],
            \ 'options' : [
            \   '-pdflatex=lualatex',
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

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-n>"
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit="/home/dominik/.vim/my_snips"
let g:UltiSnipsSnippetDirectories=["/home/dominik/.vim/my_snips", "/home/dominik/.vim/plugged/vim-snippets/UltiSnips"]


" " archive:
" " completion-nvim settings 
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" " Very important to get completion to work properly
" set completeopt=menuone,noinsert,noselect
" let g:completion_matching_strategy_list=['exact', 'substring', 'fuzzy']
" set shortmess+=c
" " let g:completion_enable_snippet = 'UltiSnips'
" let g:completion_enable_auto_popup=1
" let g:completion_matching_ignore_case =1
" let g:completion_menu_length=10
