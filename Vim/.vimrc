"
"        .__               .__                     ._
"   ____ |  |   ________ __|__|___________   ___  _|__| ____________   ____
" _/ __ \|  |  /  ___/  |  \  \___   /  _ \  \  \/ /  |/     \_  __ \_/ ___\
" \  ___/|  |__\___ \|  |  /  |/    (  <_> )  \   /|  |  Y Y  \  | \/\  \___
"  \___  >____/____  >____/|__/_____ \____/    \_/ |__|__|_|  /__|    \___  >
"      \/          \/               \/                      \/            \/
" creacion: 2017-04-16
" TODO:
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
"set colorcolumn=100
set wrap linebreak nolist
set wildmode=full
set backspace=indent,eol,start
set noshowmode
set showtabline=0
"-------------------------------------------------------------------------
"                          mappings
"-------------------------------------------------------------------------
" leader is ,
let mapleader = ','
" Fast saving
nmap <leader>w :w!<cr>
" yank all line!!!
noremap Y y$
" open all .c and .h files
nmap <leader>a :argadd **/*.c **/*.h<cr>
" kill the fucking actual buffer
nmap <leader>k :bd<cr>
" navigation in normal mode
noremap H ^
noremap L g_
noremap J 5j
noremap K 5k
" replace ; with :(te ahorras el shift)
nnoremap ; :
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
" open this fucking file
nnoremap <leader>c :e! ~/.vimrc<CR>
" multicursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" Align blocks of text and keep them selected
vmap < <gv
vmap > >gv
" TODO(elsuizo) no se para que carajo es esto, o anda mal
" nnoremap <leader>d "_d 
" vnoremap <leader>d "_d
vnoremap <c-/> :TComment<cr>
" Tagbar for los pibes
nmap <F8> :Tagbar<CR>
nmap <leader>F :NERDTreeFind<CR>
" Doxygen generate
nmap <leader>D :Dox<cr>
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" magic for seach the current word in cursor wirh AG(silversearchear)
nnoremap S :Ag <cword><CR>:cw<CR>
" Remember cursor position between vim sessions
autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
autocmd BufRead * normal zz

let g:ranger_map_keys = 0
map <leader>f :Ranger<CR>
" togle NERDTree
map <C-\> :NERDTreeToggle<CR>
"-------------------------------------------------------------------------
"                          window properties
"-------------------------------------------------------------------------
set cmdheight=1 "command bar height
" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
   set listchars=trail:-,nbsp:+
endif
" set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=red guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
" Let airline tell me my status
set noshowmode
set noswapfile
set relativenumber number

let g:airline#extensions#tabline#enabled = 1
"set hidden
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='gruvbox'
" let g:airline_theme='papercolor'
let g:airline_theme='neodark'
" let g:airline_theme='monochrome'
let g:airline#extensions#tabline#tab_nr_type = 1
nmap <leader>t :term<cr>
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
" eliminate delay between zsh and vim
set timeoutlen=1000 ttimeoutlen=0
"-------------------------------------------------------------------------
"                          Vundle stuff
"-------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"-------------------------------------------------------------------------
"                          pluggings
"-------------------------------------------------------------------------
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/L9'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-conflicted'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'jceb/vim-orgmode'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Shougo/neocomplete.vim'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'majutsushi/tagbar' " TODO no se si anda bien
Plugin 'tpope/vim-speeddating'
Plugin 'Raimondi/delimitMate' " autopairs
Plugin 'vim-scripts/DoxygenToolkit.vim' " Doxygen
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin  'chrisbra/csv.vim'         "  CSV data  files
Plugin  'vim-scripts/utl.vim'      "  orgmode
Plugin  'tpope/vim-repeat'         "  orgmode
Plugin  'vim-scripts/taglist.vim'  "  orgmode
Plugin  'chrisbra/NrrwRgn'         "  orgmode
Plugin  'tpope/vim-pathogen'       "  orgmode
Plugin  'mattn/calendar-vim'       "  orgmode
Plugin  'vim-scripts/SyntaxRange'  "  orgmode
Plugin 'matze/vim-move' "move block of text
Plugin 'SirVer/ultisnips' " snippets
Plugin 'tomtom/tcomment_vim'
Plugin 'Numkil/ag.nvim'
Plugin 'rust-lang/rust.vim' " Rust
Plugin 'vim-scripts/OIL.vim' " OIL syntax highlight
Plugin 'dermusikman/sonicpi.vim' " Sonic pi plugging
Plugin 'vim-scripts/DrawIt' " Draw ASCII art with neovim
Plugin 'octol/vim-cpp-enhanced-highlight' " C++14 colorscheme
Plugin 'tpope/vim-dispatch'
Plugin 'honza/vim-snippets'
Plugin 'KeitaNakamura/neodark.vim'

"-------------------------------------------------------------------------
"                          Pluggin themes
"-------------------------------------------------------------------------
Plugin 'vim-scripts/darktango.vim'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'morhetz/gruvbox'
Plugin 'flazz/vim-colorschemes'
Plugin 'dracula/vim'
Plugin 'sickill/vim-monokai' " Molokai colorscheme
Plugin 'robertmeta/nofrils' " minimalistic colorscheme(gray and black)
Plugin 'clinstid/eink.vim' " minimalistic gray and black
Plugin 'ryanpcmcquen/true-monochrome_vim' " minimalistic gray and black
Plugin 'owickstrom/vim-colors-paramount' " minimalistic gray and violet
Plugin 'RussellBradley/vim-nets-away' " minimalistic emulatin the NETS colors
Plugin 'elsuizo/vim-colors-paramount-suizo' " minimalistic emulatin the NETS colors

Plugin 'pbrisbin/vim-colors-off' " minimalistic emulatin the NETS colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'francoiscabrol/ranger.vim'
"-------------------------------------------------------------------------
"                          Plugin syntaxes
"-------------------------------------------------------------------------
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hdima/python-syntax'
Plugin 'othree/yajs.vim'
Plugin 'mitsuhiko/vim-jinja'

call vundle#end()
filetype plugin indent on
"-------------------------------------------------------------------------
"                          Basic
"-------------------------------------------------------------------------
" colorscheme gruvbox
" colorscheme paramount
colorscheme paramount-suizo
"set guifont=Monospace\ 10
"set guifont=courier_new:h12:w5:b:cRUSSIAN
" set guifont=RobotoMono\10
set guifont=Monaco:h12
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
set fillchars+=vert:\$
syntax enable
set background=dark
set ruler
set hidden
set number
set laststatus=2
set smartindent
let &colorcolumn="80"
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set lines=999 columns=999
" copy and paste
" TODO esto borra el mapeo re importante de visual block!!!
" vnoremap <silent> <C-c> "+y
" nnoremap <silent> <C-v> "+p
" inoremap <silent> <C-v>  <C-o>"+p

" move blocks of code in visual mode with Control+j, Control+k
let g:move_key_modifier = 'C'
set hlsearch
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

"-------------------------------------------------------------------------
"                          syntaxtic
"-------------------------------------------------------------------------
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
" let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python']
" let g:syntastic_yaml_checkers = ['jsyaml']
" let g:syntastic_html_tidy_exec = 'tidy5'

"-------------------------------------------------------------------------
"                          easy motion
"-------------------------------------------------------------------------
"let g:EasyMotion_do_mapping = 0
"let g:EasyMotion_smartcase = 1
"nmap f <Plug>(easymotion-s)
"-------------------------------------------------------------------------
"                          neocomplete
"-------------------------------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0 " por ahora no voy a utilizar autocompletado
" Use neocomplete.
let g:neocomplete#enable_at_startup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"-------------------------------------------------------------------------
"                          insert headers
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
autocmd BufNewFile *.{c++,cpp,cc,c,h,hpp,ino} call <SID>insert_description()

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
autocmd BufNewFile *.{jl,py} call <SID>insert_description_julia()

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
autocmd BufNewFile *.{tex} call <SID>insert_description_tex()

"-------------------------------------------------------------------------
"                     clipboard magic???
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
