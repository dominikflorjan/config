call plug#begin('~/.vim/plugged')

" General
Plug 'scrooloose/nerdtree'
Plug 'stevearc/vim-arduino'
Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/syntastic'

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Latex
Plug 'lervag/vimtex'
" :NeoFormat to format file
Plug 'sbdchd/neoformat'
" Do i need that?
Plug 'chiel92/vim-autoformat'

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

" change window title to what u are doing
set title
set encoding=utf-8
set hidden
set updatetime=300
set colorcolumn=80
set mouse=a
syntax on
set clipboard=unnamedplus "enable clipboard
set number relativenumber
set noswapfile
set nobackup
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
set scrolloff=8

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
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["tex"] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"
" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDcompactSexyComs = 1
"
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
nnoremap <buffer> <leader>am :ArduinoVerify<CR>
nnoremap <buffer> <leader>au :ArduinoUpload<CR>
nnoremap <buffer> <leader>ad :ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>ab :ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>ap :ArduinoChooseProgrammer<CR>

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1

" Big coc config
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
