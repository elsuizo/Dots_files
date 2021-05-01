"      _           _            _       _ _         _
"  ___| |___ _   _(_)_______   (_)_ __ (_) |___   _(_)_ __ ___
" / _ \ / __| | | | |_  / _ \  | | '_ \| | __\ \ / / | '_ ` _ \
"|  __/ \__ \ |_| | |/ / (_) | | | | | | | |_ \ V /| | | | | | |
" \___|_|___/\__,_|_/___\___/  |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
"
" Based in the config of: Mike Hartington
" repo: https://github.com/mhartington/dotfiles/
" and the awesome vimrc
" repo: https://github.com/amix/vimrc

" NOTE(elsuizo:2018-03-29): limpieza y orden
" NOTE(elsuizo:2020-04-14): mas limpieza y orden porque esta mas lento
" que Vim !!!
" NOTE(elsuizo:2020-05-17): cambie a Plug!!!
"-------------------------------------------------------------------------
"                     vundle stuff
"-------------------------------------------------------------------------
set nocompatible              " be iMproved, required
set hidden
" set cursorline
filetype off                  " required

call plug#begin('~/.vim/plugged')

" Plug 'junegunn/fzf.vim',  { 'do': { -> fzf#install() } }
Plug 'elzr/vim-json', {'on_ft': 'json'}
Plug 'jiangmiao/auto-pairs'                                          " smart autopairs
Plug 'tpope/vim-repeat'                                              " to repeat crazy paterns with .
Plug 'scrooloose/nerdtree'                                           " file mannager
Plug 'tpope/vim-surround'                                            " augment the surround capacity
Plug 'Shougo/neosnippet.vim'                                         " code snippets pluging
Plug 'Shougo/neosnippet-snippets'                                    " more code snippets
Plug 'JuliaEditorSupport/julia-vim'                                  " Julia language support
Plug 'majutsushi/tagbar'                                             " navigation code bar(functions, definitions, types)
Plug 'matze/vim-move'                                                " move blocks of code
Plug 'lervag/vimtex'                                                 " for work with tex files
Plug 'rust-lang/rust.vim'                                            " Rust language support
Plug 'chrisbra/csv.vim'                                              " Visualize csv files
Plug 'elsuizo/vim-colors-paramount-suizo'                            " personal colorscheme
Plug 'roxma/vim-tmux-clipboard'                                      " tmux copy and paste support
Plug 'racer-rust/vim-racer'                                          " Rust code navigation
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'} " markdown support
Plug 'chriskempson/base16-vim'                                       " a set of colorschemes
Plug 'elsuizo/monosvkem'                                             " personal colorscheme(modified)
" Plug 'alaric/neovim-visor'                                           " open/close the terminal with Alt-t
Plug 'flazz/vim-colorschemes'                                        " almost all the colorschemes
Plug 'tomtom/tcomment_vim'                                           " comment lines of blocks of code
Plug 'neutaaaaan/iosvkem'
Plug 'vim-scripts/DoxygenToolkit.vim'
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'cespare/vim-toml'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'voldikss/vim-floaterm'
call plug#end()
"-------------------------------------------------------------------------
"                     Settings
"-------------------------------------------------------------------------
set completeopt-=preview
" set noshowmode             " dont show INSERT
set noswapfile             " dont want swap files ~
set scrolloff=10           " move the window 10 lines after reach the bottom

" vertical column at 80(for reference)
set colorcolumn=80

" for copy and paste
set clipboard+=unnamedplus

set list                   " show problematic characters.

filetype on                " look what type of file is

set nowrap                 " dont cut the lines

set history=700

set relativenumber number  " i want relative number lines

filetype plugin indent on

set cmdheight=1           " height of the command bar

set expandtab             " Use spaces instead of tabs

" 1 tab == 3 spaces
set shiftwidth=3
set tabstop=3

set ai                    " auto indent
set si                    " smart indent

" block select not limited by shortest line
set virtualedit=
set wildmenu
set laststatus=2

" leader is ,
let mapleader = ','

set undofile

" save temporary/backup files not in the local directory, but in your ~/.vim
" directory, to keep them out of git repos.
" Pretty sure you need to mkdir backup, swap, and undo first to make this work
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Remember cursor position between vim sessions
autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal! g'\"" |
        \ endif

" center buffer around cursor when opening files
autocmd BufRead * normal zz

" cosas que pueden mejorar la latencia
" set lazyredraw
" set ttyfast

set ruler " mostrar la posicion del cursor siempre

" Required for operations modifying multiple buffers like rename.
set synmaxcol=128
syntax sync minlines=256
set noshowcmd
set hidden

" python versions
" python2 virtualenv path
let g:python_host_prog = '/home/elsuizo/.pyenv/versions/neovim2/bin/python'
" python3 path
let g:python3_host_prog = '/home/elsuizo/.pyenv/versions/neovim/bin/python3'

" snippets directorys
let g:neosnippet#snippets_directory='~/.vim/plugged/neosnippet-snippets/neosnippets, ~/.vim/My_snippets'
" latex stuff
let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = 'latex'
" Rust stuff
" Racer completion
let g:racer_cmd = "/home/elsuizo/.cargo/bin/racer"
let g:racer_experimental_completer = 1
" let g:racer_insert_paren = 1
" rustfmt
let g:rustfmt_command = "rustfmt +nightly"
let g:rustfmt_autosave = 0
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
au FileType rust nmap <leader>r :Cargo run<cr>
au FileType rust nmap <leader>t :Cargo test<cr>
au FileType rust nmap <leader>tc :Cargo check<cr>

" TODO(elsuizo:2020-05-14): hacer que muestre un msg si hay errores o un ok si
" no hubo errores
au FileType rust nmap <leader>R :silent !tmux run-shell -b -t 'output' 'cargo run 2>&1'<cr>

au FileType julia nmap <leader>r :silent !tmux send-keys -t 'julia' "include("'"%"'")" Enter<cr>

" NOTE(elsuizo:2020-11-24): aca tenemos que tener abierto ipython en el lugar
" donde estamos corriendo el script
au FileType python nmap <leader>r :silent !tmux send-keys -t 'output' "python "%"" Enter<cr>

au FileType tex nmap <leader>o :silent !tmux run-shell -b -t 'output' 'make open 2>&1'<cr>
" au FileType c,cpp nmap <leader>M :silent !tmux run-shell -b -t 'output' 'make 2>&1'<cr>

" tag bar for Rust
let g:rust_use_custom_ctags_defs = 1
let g:tagbar_type_rust = {
  \ 'ctagsbin' : '/usr/bin/ctags',
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \ 'n:modules',
      \ 's:structures:1',
      \ 'i:interfaces',
      \ 'c:implementations',
      \ 'f:functions:1',
      \ 'g:enumerations:1',
      \ 't:type aliases:1:0',
      \ 'v:constants:1:0',
      \ 'M:macros:1',
      \ 'm:fields:1:0',
      \ 'e:enum variants:1:0',
      \ 'P:methods:1',
  \ ],
  \ 'sro': '::',
  \ 'kind2scope' : {
      \ 'n': 'module',
      \ 's': 'struct',
      \ 'i': 'interface',
      \ 'c': 'implementation',
      \ 'f': 'function',
      \ 'g': 'enum',
      \ 't': 'typedef',
      \ 'v': 'variable',
      \ 'M': 'macro',
      \ 'm': 'field',
      \ 'e': 'enumerator',
      \ 'P': 'method',
  \ },
\ }

" airline stuff
" Let airline tell me my status
"set hidden
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline_powerline_fonts = 1
" " colorscheme de airline
" let g:airline_theme='zenburn'
set termguicolors
let g:airline#extensions#tabline#tab_nr_type = 1
nmap <leader>t :terminal<cr>
nmap <space>, :bnext<CR>
nmap <space>. :bprevious<CR>
nmap <leader>b :b#<CR>
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" nmap <leader>1 <Plug>AirlineSelectTab1
" nmap <leader>2 <Plug>AirlineSelectTab2
" nmap <leader>3 <Plug>AirlineSelectTab3
" nmap <leader>4 <Plug>AirlineSelectTab4
" nmap <leader>5 <Plug>AirlineSelectTab5
" nmap <leader>6 <Plug>AirlineSelectTab6
" nmap <leader>7 <Plug>AirlineSelectTab7
" nmap <leader>8 <Plug>AirlineSelectTab8
" nmap <leader>9 <Plug>AirlineSelectTab9
"  Colorschemes
nnoremap <leader>1 :BufferGoto 1<CR>
nnoremap <leader>2 :BufferGoto 2<CR>
nnoremap <leader>3 :BufferGoto 3<CR>
nnoremap <leader>4 :BufferGoto 4<CR>
nnoremap <leader>5 :BufferGoto 5<CR>
nnoremap <leader>6 :BufferGoto 6<CR>
nnoremap <leader>7 :BufferGoto 7<CR>
nnoremap <leader>8 :BufferGoto 8<CR>
nnoremap <leader>9 :BufferLast<CR>
syntax enable
set termguicolors
set background=dark
" set background=light
colorscheme Monosvkem
" colorscheme Iosvkem
" colorscheme naysayer88
" colorscheme solarized8_light_high
" colorscheme deep-space
" colorscheme tender
" i want italic in comments
hi Comment gui=italic cterm=italic term=italic
hi FloatermBorder guibg=black guifg=white
" highlight LineNr term=bold cterm=NONE ctermfg=Gray ctermbg=NONE gui=NONE guifg=Gray guibg=NONE
" highlight CursorLineNr guifg=Red guibg=#050505 gui=NONE
" NerdTree variables
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1

" tmux variables
let g:tmux_navigator_no_mappings = 1

" meson file extension
au BufRead,BufNewFile *.build set filetype=meson

"-------------------------------------------------------------------------
"                     clipboard magic
"-------------------------------------------------------------------------
let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }


" let $FZF_DEFAULT_OPTS='--reverse'
" let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
" " NOTE(elsuizo) no se si uso esto, pero la onda es cuando estas en la ventana
" " de fzf que haga esas acciones
" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-s': 'split',
"   \ 'ctrl-v': 'vsplit' }
"-------------------------------------------------------------------------
"                     Mappings
"-------------------------------------------------------------------------

" dont use the fucking arrows
nmap <Up> <NOP>
nmap <Down> <NOP>
nmap <Left> <NOP>
nmap <Right> <NOP>

" Jump to start and end of line using the home row keys
map H ^
map L $

" tmux mappings
" nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
" nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
" nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
" nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
" nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>

" telescope
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" snippets mapps
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

map <C-\> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1

" esto lo necesitamos para hacer la busqueda de una palabra que esta bajo el
" cursor en todo los archivos que estan en un proyecto
" command! -bang -nargs=* Find
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always '.shellescape(expand('<cword>')), 1,
"   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \   <bang>0)
" search for the word under the cursor and search in all places with Rg
" nnoremap S :Find <cword><CR>

" <leader>= reformats current range of Rust code
nnoremap <leader>= :'<,'>RustFmtRange<cr>

" make
autocmd FileType c,c++,tex nnoremap <F5> :make<CR>

" make clean
autocmd FileType c,c++,tex nnoremap <F6> :make clean<CR>

autocmd FileType c,c++ nnoremap <F4> :make run<CR>

" open all .c and .h files
au FileType c,cpp nmap <leader>a :argadd **/*.c **/*.h<cr>

" open the terminal in horizontal split(with Alt-t)
" nmap <M-t> :split term://zsh<cr>
" kill the buffer!!!
nmap <leader>k :bd<cr>
" open fzf
" nmap <leader>f :Files<cr>
" " open buffers in fzf
" nmap <leader>b :Buffers<cr>

"open oil files
au BufEnter,BufRead,BufNewFile *.oil setfiletype oil

" launch files(from ROS) like xml
au BufEnter,BufRead,BufNewFile *.launch setfiletype xml

" open tex files
au BufEnter,BufRead,BufNewFile *.tex setfiletype tex

" Center the buffer in a search
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap Q !!$SHELL <CR>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

" Fast saving
nmap <leader>w :w!<cr>

" vim move a block of code with Control
let g:move_key_modifier = 'C'

" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" spell checking
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" show all White spaces and tabs
if &listchars ==# 'eol:$'
   set listchars=trail:-,nbsp:+
endif

" open this fucking config file
nnoremap <leader>c :e! ~/.config/nvim/init.vim<cr>

" Parenthesis/bracket
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
"zsh: parse error near `\n'
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

" Tagbar for los pibes
nmap <F8> :TagbarToggle<CR>

" open NERDtree here
nmap <leader>F :NERDTreeFind<CR>

" Doxygen generate
nmap <leader>D :Dox<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

"complete files
inoremap <c-f> <c-x><c-f>

" NOTE(elsuizo:2020-07-15): lo que pasa es que Y esta piolaaa
" some copy magics
" vnoremap y "*y<CR>
" nnoremap Y "*Y<CR>
" vnoremap y myy`y
" vnoremap Y myY`y

" yank all line!!!
noremap Y y$

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv
" terminal mappings
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

nnoremap   <silent>   <A-t>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <A-t>   :FloatermToggle<CR>
tnoremap   <silent>   <A-t>   <C-\><C-n>:FloatermToggle<CR>

" TODO(elsuizo:2020-04-10): esto tendria que ser una sola funcion
" insert the headers
autocmd BufNewFile *.{tex} call <SID>insert_description_tex()
autocmd BufNewFile *.{rs} call <SID>insert_description_rust()
autocmd BufNewFile *.{jl,py} call <SID>insert_description_julia()
autocmd BufNewFile *.{c++,cpp,cc,c,h,hpp,ino} call <SID>insert_description()

"-------------------------------------------------------------------------
"                     functions
"-------------------------------------------------------------------------

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("Ack \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction
"Reads the template file replacing the tags by the actual
" information and insert the result at the beginning of the buffer. At
" the end, creates two blank lines at the end of the file and
" position the cursor at the first one.
function! s:insert_description()
    let template = $HOME . "/.vim/template/cpp.template"
    let file_name = expand("%:t") " Get file name without path
    let date = strftime("%D %T") " Get the current year in format YYYY
    let i = 0
    for line in readfile(template)
        let line = substitute(line, "<file_name>", file_name, "ge")
        let line = substitute(line, "<date>", date, "ge")
        call append(i, line)
        let i += 1
    endfor
    execute "normal! Go\<Esc>k"
endfunction

" TODO(elsuizo): hacer una sola puta funcion
" Headers for Julia and Python
function! s:insert_description_julia()
    let template = $HOME . "/.vim/template/julia-python.template"
    let file_name = expand("%:t") " Get file name without path
    let date = strftime("%D %T") " Get the current year in format YYYY
    let i = 0
    for line in readfile(template)
        let line = substitute(line, "<file_name>", file_name, "ge")
        let line = substitute(line, "<date>", date, "ge")
        call append(i, line)
        let i += 1
    endfor
    execute "normal! Go\<Esc>k"
endfunction

function! s:insert_description_tex()
    let template = $HOME . "/.vim/template/tex.template"
    let file_name = expand("%:t") " Get file name without path
    let date = strftime("%D %T") " Get the current year in format YYYY
    let i = 0
    for line in readfile(template)
        let line = substitute(line, "<file_name>", file_name, "ge")
        let line = substitute(line, "<date>", date, "ge")
        call append(i, line)
        let i += 1
    endfor
    execute "normal! Go\<Esc>k"
endfunction

function! s:insert_description_rust()
    let template = $HOME . "/.vim/template/rust.template"
    let file_name = expand("%:t") " Get file name without path
    let date = strftime("%D %T") " Get the current year in format YYYY
    let i = 0
    for line in readfile(template)
        let line = substitute(line, "<file_name>", file_name, "ge")
        let line = substitute(line, "<date>", date, "ge")
        call append(i, line)
        let i += 1
    endfor
    execute "normal! Go\<Esc>k"
endfunction
