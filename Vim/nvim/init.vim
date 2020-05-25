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
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim',  { 'do': { -> fzf#install() } }
Plug 'justinmk/vim-syntax-extra'
Plug 'elzr/vim-json', {'on_ft': 'json'}
Plug 'tpope/vim-fugitive'                        " para trabajar con git(no lo uso casi nada
Plug 'jiangmiao/auto-pairs'
Plug 'Xuyuanp/nerdtree-git-plugin'               " para ver las modificaciones de git en nerdtree???
Plug 'tpope/vim-repeat'                          " para repetir patrones locos cuando utilizamos .
Plug 'scrooloose/nerdtree'                       " el aclamado navegador de archivos
Plug 'christoomey/vim-tmux-navigator'            " para navegar cuando tenemos archivos abiertos de tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neco-vim', {'on_ft': 'vim'}
Plug 'ujihisa/neco-look'                          " Se fija en las palabras del diccionario para autocompleta
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'vim-scripts/SyntaxRange'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
"-------------------------------------------------------------------------
"elsuizo adds
"-------------------------------------------------------------------------
"orgmode
"
Plug 'mattn/calendar-vim'
Plug 'JuliaEditorSupport/julia-vim' " julia language support
Plug 'majutsushi/tagbar' " TODO no se si anda bien
Plug 'jceb/vim-orgmode'
Plug 'vim-scripts/utl.vim' " para abrir links y demas desde neovim
Plug 'tpope/vim-speeddating'
Plug 'chrisbra/NrrwRgn'
Plug 'Numkil/ag.nvim'
Plug 'matze/vim-move'      " este es muuuy bueno
Plug 'alaric/neovim-visor' " open the terminal split
Plug 'lervag/vimtex'
Plug 'rust-lang/rust.vim' " Rust
Plug 'sebastianmarkow/deoplete-rust' " Rust
Plug 'vim-scripts/DoxygenToolkit.vim' " Doxygen
Plug 'chrisbra/csv.vim' " CSV data files
Plug 'vim-scripts/OIL.vim' " OIL syntax highlight
Plug 'elsuizo/vim-colors-paramount-suizo' " el mejor colorscheme
Plug 'roxma/vim-tmux-clipboard'
Plug 'racer-rust/vim-racer'
Plug 'matze/vim-meson'
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & yarn install'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'neutaaaaan/monosvkem'

call plug#end()
"-------------------------------------------------------------------------
"                     Settings
"-------------------------------------------------------------------------
set completeopt-=preview

set noshowmode             " no quiero que me muestres INSERT
set noswapfile             " no quiero esos estupidos file~

filetype on                " quiero que te preocupes por que tipo de file estas abriendo

set nowrap                 " no quiero que se corten las lineas!!!

set relativenumber number  " quiero ver las lineas relativas

filetype plugin indent on

" TODO(elsuizo:2020-05-21): no se si anda bien esto
" set noshowcmd noruler
" Height of the command bar
set cmdheight=1

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
" set smarttab

" 1 tab == 3 spaces
set shiftwidth=3
set tabstop=3

" Linebreak on 500 characters
" set lbr
" set tw=500
" Magic
set ai "Auto indent
set si "Smart indent
" set cindent
" set wrap "Wrap lines
" block select not limited by shortest line

set virtualedit=
set wildmenu
set laststatus=2

" leader is ,
let mapleader = ','

set undofile

" Save temporary/backup files not in the local directory, but in your ~/.vim
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
let g:jsx_ext_required = 0
set complete=.,w,b,u,t,k
let g:gitgutter_max_signs = 1000  " default value

autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
let g:indentLine_char='│'
" cosas que pueden mejorar la latencia
set lazyredraw
set ttyfast

" set ruler " mostrar la posicion del cursor siempre
" Required for operations modifying multiple buffers like rename.
set hidden

" cursor shapes
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
" \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
" \,sm:block-blinkwait175-blinkoff150-blinkon175

set synmaxcol=128
syntax sync minlines=256
set noshowcmd

" python versions
" python2 virtualenv path
let g:python_host_prog = '/home/elsuizo/.pyenv/versions/neovim2/bin/python'
" python3 path
let g:python3_host_prog = '/home/elsuizo/.pyenv/versions/neovim/bin/python3'
set hidden
" latex stuff
let g:vimtex_compiler_progname = 'nvr'
" Racer completion
let g:racer_cmd = "/home/elsuizo/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1
" rustfmt
let g:rustfmt_command = "rustfmt +nightly"
let g:rustfmt_autosave = 1
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

" TODO(elsuizo:2020-05-15): cuando hago un make en C quiero que lo pases otro
" boliche para que queden ahi los resultados
" au FileType c,cpp nmap <leader>R :silent !tmux run-shell -b -t left 'cargo run 2>&1'<cr>

" " NOTE(elsuizo:2020-05-21): como no lo uso casi nunca lo saco, pero lo dejo
" por las dudas
" multiple cursor
" let g:multi_cursor_next_key='<C-n>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'

" NOTE(elsuizo:2019-03-26): tagbar para rust
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

" colorschemes los que mas me gustan
syntax enable
set termguicolors
set background=dark
" set background=light
" colorscheme PaperColor
colorscheme Monosvkem

" con esto habilitamos italics!!!
hi Comment gui=italic cterm=italic term=italic

" NerdTree variables
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1

" "-------------------------------------------------------------------------
" "                     deoplete stuff
" "-------------------------------------------------------------------------
" deoplete variables
" " TODO(elsuizo:2018-03-29): ver si esto cambia en algo la velocidad
" " snippets directorys
let g:neosnippet#snippets_directory='~/.vim/repos/github.com/Shougo/neosnippet-snippets, ~/.vim/My_snippets'
"
" " deoplete + neosnippet + autopairs
let g:deoplete#check_stderr = 0
let g:AutoPairsMapCR=0
let g:deoplete#enable_at_startup = 1

" Rust deplete
let g:deoplete#sources#rust#racer_binary='/home/elsuizo/.cargo/bin/racer'
" let g:deoplete#sources#rust#rust_source_path='/home/elsuizo/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:deoplete#sources#rust#rust_source_path='/home/elsuizo/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:racer_disable_errors = 1

" tmux variables
let g:tmux_navigator_no_mappings = 1

" airline variables
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='lucius'
let g:airline_theme='minimalist'
" let g:airline_theme='raven'
let g:airline#extensions#tabline#tab_nr_type = 1

" meson file extension
" Set the filetype based on the file's extension, overriding any
" 'filetype' that has already been set
au BufRead,BufNewFile *.build set filetype=meson
"-------------------------------------------------------------------------
"                     Mappings
"-------------------------------------------------------------------------

" dont use the fucking arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" airline mappings
nmap <leader>, :bnext<CR>
nmap <leader>. :bprevious<CR>
nmap <leader>b :b#<CR>
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" tmux mappings
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" snippets mapps
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

map <C-\> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1

" buscar la palabra en la que esta el cursor con ag(silversearcher)
nnoremap S :Ag <cword><CR>:cw<CR>
" TODO(elsuizo:2020-05-18): no se porque no anda con Rg
" nnoremap S :Rg <cword><CR>:cw<CR>

" <leader>= reformats current range of Rust code
nnoremap <leader>= :'<,'>RustFmtRange<cr>

" make
autocmd FileType c,c++ nnoremap <F5> :make<CR>

" make clean
autocmd FileType c,c++ nnoremap <F6> :make clean<CR>

" open all .c and .h files
nmap <leader>a :argadd **/*.c **/*.h<cr>
" kill the buffer!!!
nmap <leader>k :bd<cr>
" open fzf
nmap <leader>f :Files<cr>
" open buffers in fzf
nmap <leader>b :Buffers<cr>

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

autocmd FileType rust,python setlocal completeopt-=preview " for jedi popup doc disable
set history=700
" Fast saving
nmap <leader>w :w!<cr>

let g:move_key_modifier = 'C'
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" if new line show arrow
if has('linebreak')
  let &showbreak='⤷ ' " arrow pointing downwards then curving rightwards (U+2937, UTF-8: E2 A4 B7)
endif

" show all White spaces and tabs
if &listchars ==# 'eol:$'
   set listchars=trail:-,nbsp:+
endif
set list                " Show problematic characters.

" open the fucking config file
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

" when press ; go to command mode
nnoremap ; :

"complete files
inoremap <c-f> <c-x><c-f>

" some copy magics
vnoremap y "*y<CR>
nnoremap Y "*Y<CR>
vnoremap y myy`y
vnoremap Y myY`y

" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <c-/> :TComment<cr>
" terminal mappings
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" TODO(elsuizo:2020-04-10): esto tendria que ser una sola funcion
" insert the headers
autocmd BufNewFile *.{tex} call <SID>insert_description_tex()
autocmd BufNewFile *.{rs} call <SID>insert_description_rust()
autocmd BufNewFile *.{jl,py} call <SID>insert_description_julia()
autocmd BufNewFile *.{c++,cpp,cc,c,h,hpp,ino} call <SID>insert_description()

"-------------------------------------------------------------------------
"                     functions
"-------------------------------------------------------------------------

" NerdTree color files
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

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

set clipboard+=unnamedplus

" NOTE(elsuizo) no se si uso esto, pero la onda es cuando estas en la ventana
" de fzf que haga esas acciones
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
