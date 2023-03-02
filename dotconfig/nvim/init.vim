"
" vim owo
"

" base ----------------------- {{{

set nocompatible
set undofile
filetype on
filetype plugin on
filetype indent on
syntax on
set number relativenumber
" set cursorline
" set cursorcolumn
set tabstop=2
set shiftwidth=2
set expandtab
set scrolloff=5
set nowrap
set incsearch
set ignorecase
set smartcase
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set foldenable 
if exists("g:neovide")
  set mouse
  set guifont=Source\ Code\ Pro:h11
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
Plug 'scrooloose/syntastic'
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
" lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'psliwka/vim-smoothie'
call plug#end()

:colorscheme gruvbox 
"  }}}

" maps -------------------------------------------{{{
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
  \ startify#pad(split(system('neofetch --stdout'), '\n'))


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

