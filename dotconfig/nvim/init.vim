"
" vim owo
"

" base ----------------------- {{{

set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number relativenumber
set numberwidth=3
set cursorline
" set cursorcolumn
set tabstop=2
set shiftwidth=2
set expandtab
set scrolloff=5
" set nowrap
set incsearch
set ignorecase
set smartcase
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set nofoldenable

" fullcolor terminal
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile

if exists("g:neovide")
  set mouse
  set guifont=Source\ Code\ Pro:h12
  let g:neovide_refresh_rate = 60
  let g:neovide_refresh_rate_idle = 5
  let g:neovide_cursor_animation_length=0.13
  let g:neovide_cursor_trail_size = 0.2
  let g:neovide_cursor_antialiasing = v:true
 " let g:neovide_cursor_vfx_mode = "torpedo"
 " let g:neovide_cursor_vfx_particle_density = 20

endif

" }}}

" plugins ---------------------------------------- {{{

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
"Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mbbill/undotree'
Plug 'mhinz/vim-startify'
Plug 'skammer/vim-css-color'
Plug 'turbio/bracey.vim'
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }
Plug 'elkowar/yuck.vim'
Plug 'mlaursen/vim-react-snippets'

call plug#end()

:colorscheme gruvbox 
"  }}}

" keymaps -------------------------------------------{{{
" undo
map! <C-z> :u<CR>
"paste
map! <C-S-v> <C-R>+
"next buffer
"map! <C-m> <esc>:bnext<cr>
"previous buffer
"map! <C-n> <esc>:bprev<cr>
"escape
inoremap jjj <esc>
tnoremap jjj <C-\><C-n>
inoremap fff <esc>
tnoremap fff <C-\><C-n>
nnoremap dia :CocDiagnostics<Cr>
"term
nnoremap 22 :belowright split<cr>:term<cr>:resize 6<cr>iclear<cr> 
"yank line
nnoremap Y y$
"home&end
inoremap hhh <home>
inoremap lll <end>
": to //
""nnoremap // :
"resize splits
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><
"toggle nerdtree
nnoremap 33 :NERDTreeToggle<cr>
nnoremap 44 :UndotreeToggle<cr>
nnoremap 11 :Startify<cr>

" coc accept
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" }}}

" vimscript -------------------------------------- {{{

"disable autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" folding
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" timeoutlen for insert mode
:autocmd InsertEnter * set timeoutlen=150
:autocmd InsertLeave * set timeoutlen=3000

"indent
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'startify']

"startify
let g:startify_bookmarks = systemlist("cut -sd' ' -f 2- ~/.NERDTreeBookmarks")

let g:startify_custom_header =
  \ startify#pad(split(system('echo ""'), '\n'))


" }}}

" coc ----------------------------------------------{{{

" https://github.com/neoclide/coc.nvim#example-vim-configuration
inoremap <silent><expr> <c-space> coc#refresh()

" gd - go to definition of word under cursor
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" gi - go to implementation
nmap <silent> gi <Plug>(coc-implementation)

" gr - find references
nmap <silent> gr <Plug>(coc-references)

" gh - get hint on whatever's under the cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>

" List errors
nnoremap <silent> <leader>cl  :<C-u>CocList locationlist<cr>

" list commands available in tsserver (and others)
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>

" restart when tsserver gets wonky
nnoremap <silent> <leader>cR  :<C-u>CocRestart<CR>

" view all errors
nnoremap <silent> <leader>cl  :<C-u>CocList locationlist<CR>

" manage extensions
nnoremap <silent> <leader>cx  :<C-u>CocList extensions<cr>

" rename the current word in the cursor
nmap <leader>cr  <Plug>(coc-rename)
nmap <leader>cf  <Plug>(coc-format-selected)
vmap <leader>cf  <Plug>(coc-format-selected)

" run code actions
vmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" }}}

" status ---------- ------------------------------- {{{

let g:airline_theme='base16_summerfruit_dark'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = ' '



" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' l:'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.colnr = ' c:'

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" }}}

