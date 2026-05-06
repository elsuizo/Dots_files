"
"        .__               .__                     ._
"   ____ |  |   ________ __|__|___________   ___  _|__| ____________   ____
" _/ __ \|  |  /  ___/  |  \  \___   /  _ \  \  \/ /  |/     \_  __ \_/ ___\
" \  ___/|  |__\___ \|  |  /  |/    (  <_> )  \   /|  |  Y Y  \  | \/\  \___
"  \___  >____/____  >____/|__/_____ \____/    \_/ |__|__|_|  /__|    \___  >
"      \/          \/               \/                      \/            \/
" creacion: 2017-04-16
" TODO:
"  -[ ] En realidad lo que quiero
"  -[X] Copiar con control-c
"  -[X] Pegar con control-v
"  -[ ] resaltar con color los resultados de una busqueda
"  -[ ] abrir todos los archivos .c y .h de una carpeta con un comando
"  -[ ] Setear bien la carpeta de UNDO!!!
"  -[ ] Hacer que la navegacion con tabs sea piola
"  -[ ] compilar make con un atajo y que abra una ventana nueva de tmux o de vim
"-------------------------------------------------------------------------
"                          Navigation
"-------------------------------------------------------------------------
" NOTE: 2026-05-06
" dont use the fucking arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Use spaces instead of tabs
set expandtab
" indent wrapped lines to match start
set breakindent

" Be smart when using tabs ;)
"set smarttab

" 1 tab == 3 spaces
set shiftwidth=3
set tabstop=3

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
" set cindent
set wrap "Wrap lines
" block select not limited by shortest line
set virtualedit=
set wildmenu
set laststatus=2
set colorcolumn=80
set wrap linebreak nolist
set wildmode=full
set backspace=indent,eol,start
set noshowmode
set showtabline=0
set lazyredraw
"-------------------------------------------------------------------------
"                          mappings
"-------------------------------------------------------------------------
" leader is ,
let mapleader = ','

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>

" Fast saving
nmap <leader>w :w!<cr>

" yank all line!!!
noremap Y y$

" open all .c and .h files
nmap <leader>a :argadd **/*.c **/*.h<cr>

" kill the fucking actual buffer
nmap <leader>k :bd<cr>

" replace ; with :(te ahorras el shift)
nnoremap ; :

" open this fucking file
nnoremap <leader>c :e! ~/.vimrc<CR>

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

" comentar !!!
vnoremap <c-/> :TComment<cr>

" Tagbar for los pibes
nmap <F8> :Tagbar<CR>


" generar docs para archivos .c .h
nmap <leader>D :Dox<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" magic for seach the current word in cursor wirh AG(silversearchear)
nnoremap S :Ag <cword><CR>:cw<CR>

" " Remember cursor position between vim sessions
" autocmd BufReadPost *
"               \ if line("'\"") > 0 && line ("'\"") <= line("$") |
"               \   exe "normal! g'\"" |
"               \ endif
"               " center buffer around cursor when opening files
" autocmd BufRead * normal zz

"-------------------------------------------------------------------------
"                          window properties
"-------------------------------------------------------------------------
set cmdheight=1 "command bar height
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
   set listchars=trail:-,nbsp:+
endif
set list  " quiero que muestres los trailings y cuando hay un cambio de linea

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=red guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
" Let airline tell me my status
set noshowmode
set noswapfile
set relativenumber number

"set hidden
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline_powerline_fonts = 1
"
" " colorscheme de airline
" let g:airline_theme='minimalist'
"
" let g:airline#extensions#tabline#tab_nr_type = 1
nmap <leader>t :terminal<cr>
nmap <leader>, :bnext<CR>
nmap <leader>. :bprevious<CR>
nmap <leader>b :b#<CR>
" let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" eliminate delay between zsh and vim
set timeoutlen=1000 ttimeoutlen=0
"-------------------------------------------------------------------------
"                          Vundle stuff
"-------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
"-------------------------------------------------------------------------
"                          pluggings
"-------------------------------------------------------------------------
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'majutsushi/tagbar' " TODO no se si anda bien
Plug 'tpope/vim-speeddating'
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'matze/vim-move' "move block of text
Plug 'tomtom/tcomment_vim'
Plug 'Numkil/ag.nvim'
Plug 'rust-lang/rust.vim' " Rust
Plug 'roxma/vim-tmux-clipboard'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"-------------------------------------------------------------------------
"                          Pluggin themes
"-------------------------------------------------------------------------
Plug 'elsuizo/vim-colors-paramount-suizo' " minimalistic emulatin the NETS colors
Plug 'elsuizo/monosvkem'
"-------------------------------------------------------------------------
"                          Plugin syntaxes
"-------------------------------------------------------------------------
Plug 'hdima/python-syntax'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Initialize plugin system
call plug#end()
"-------------------------------------------------------------------------
"                          coc
"-------------------------------------------------------------------------
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"-------------------------------------------------------------------------
"                          Basic
"-------------------------------------------------------------------------
" colorscheme paramount-suizo
" colorscheme PaperColor
colorscheme Monosvkem

set guifont=mononoki\ Nerd\ Font\ Mono\ 13

set fillchars+=vert:\$

syntax enable

set background=dark

set ruler           " mostrar la posicion del cursor siempre!!!"

set hidden

set number

set laststatus=2

set smartindent     " quiero que busques la palabra no importa si esta en CamelCase!!!

set hlsearch

" Gvim opciones
set guioptions-=m   "remove menu bar
set guioptions-=T   "remove toolbar
set guioptions-=r   "remove right-hand scroll bar
set guioptions-=L   "remove left-hand scroll bar
set lines=999 columns=999

" move blocks of code in visual mode with Control+j, Control+k
let g:move_key_modifier = 'C'
if exists('$SUDO_USER')
  set nobackup                        " don't create root-owned files
  set nowritebackup                   " don't create root-owned files
else
  set backupdir=~/local/.vim/tmp/backup
  set backupdir+=~/.vim/tmp/backup    " keep backup files out of the way
  set backupdir+=.
endif
"-------------------------------------------------------------------------
"                          NerdTree
"-------------------------------------------------------------------------
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>
" encontrar el archivo en el que estamos con ,F
nmap <leader>F :NERDTreeFind<CR>

" fzf maps
nmap <leader>f :Files<CR>
nmap <leader>b :Buffers<CR>

" togle NERDTree
map <C-\> :NERDTreeToggle<CR>

" comandos para Rust cargo
au FileType rust nmap <leader>r :Cargo run<cr>
au FileType rust nmap <leader>t :Cargo test<cr>

command! -nargs=* Cargo cexpr system("cargo <args>") | cwindow
