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

"-------------------------------------------------------------------------
"                     Packages
"-------------------------------------------------------------------------
" Shougo package mannager
if (!isdirectory(expand("$HOME/.vim/repos/github.com/Shougo/dein.vim")))
   call system(expand("mkdir -p $HOME/.vim/repos/github.com"))
   call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.vim/repos/github.com/Shougo/dein.vim"))
endif
set nocompatible
" Required:
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim/
call dein#begin(expand('~/.vim'))
let pluginsExist = 0
call dein#add('flazz/vim-colorschemes.git')
call dein#add('Shougo/dein.vim')
call dein#add('elzr/vim-json', {'on_ft': 'json'})
call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
call dein#add('dhruvasagar/vim-table-mode')
call dein#add('suan/vim-instant-markdown', {'on_ft': 'markdown'})
call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
call dein#add('mhartington/oceanic-next')
call dein#add('tpope/vim-fugitive')
call dein#add('jreybert/vimagit')
call dein#add('mhinz/vim-signify')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('tpope/vim-repeat')
call dein#add('benekastah/neomake')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('scrooloose/nerdtree')
call dein#add('AndrewRadev/switch.vim')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('tmux-plugins/vim-tmux')
call dein#add('tmux-plugins/vim-tmux-focus-events')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('tpope/vim-surround')
call dein#add('tomtom/tcomment_vim')
call dein#add('Chiel92/vim-autoformat')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/unite-outline')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('junkblocker/unite-codesearch')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/neco-vim', {'on_ft': 'vim'})
call dein#add('Shougo/neoinclude.vim')
call dein#add('ujihisa/neco-look')
call dein#add('zchee/deoplete-jedi')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('honza/vim-snippets')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('rhysd/github-complete.vim')
call dein#add('vim-scripts/SyntaxRange')
call dein#add('zchee/deoplete-go', {'build': 'make'},{'on_ft': 'go'})
call dein#add('rhysd/nyaovim-popup-tooltip')
call dein#add('ryanoasis/vim-devicons')
call dein#add('zchee/deoplete-clang') " deoplete completion for c
"-------------------------------------------------------------------------
"elsuizo adds
"-------------------------------------------------------------------------
"orgmode
"
call dein#add ('NLKNguyen/papercolor-theme')
call dein#add('vim-scripts/taglist.vim')
call dein#add('tpope/vim-pathogen')
call dein#add('mattn/calendar-vim')
call dein#add('JuliaEditorSupport/julia-vim') " julia language support
" call dein#add('ajpaulson/julia-syntax.vim') " julia language old
call dein#add('majutsushi/tagbar') " TODO no se si anda bien
call dein#add('jceb/vim-orgmode')
call dein#add('vim-scripts/utl.vim')
call dein#add('tpope/vim-speeddating')
call dein#add('chrisbra/NrrwRgn')
call dein#add('Numkil/ag.nvim')
call dein#add('matze/vim-move')
call dein#add('AlessandroYorba/Alduin') " Alduin colorscheme
call dein#add('Raimondi/delimitMate') " autopairs
call dein#add('Konfekt/FastFold') " fold
call dein#add('alaric/neovim-visor') " open the terminal split
call dein#add('wincent/scalpel') " nose
call dein#add('lervag/vimtex')
call dein#add('rust-lang/rust.vim') " Rust
call dein#add('sebastianmarkow/deoplete-rust') " Rust
call dein#add('vim-scripts/DoxygenToolkit.vim') " Doxygen
call dein#add('frankier/neovim-colors-solarized-truecolor-only')
call dein#add('junegunn/vim-easy-align') " align
call dein#add('morhetz/gruvbox') " Gruvbox colorscheme
call dein#add('chrisbra/csv.vim') " CSV data files
call dein#add('vim-scripts/OIL.vim') " OIL syntax highlight
call dein#add('4Evergreen4/vim-hardy') " Arduino IDE integration
call dein#add('jplaut/vim-arduino-ino') "
call dein#add('sickill/vim-monokai') " Molokai colorscheme
call dein#add('dermusikman/sonicpi.vim') " Sonic pi plugging
call dein#add('vim-scripts/DrawIt') " Draw ASCII art with neovim
call dein#add('robertmeta/nofrils') " minimalistic colorscheme(gray and black)
call dein#add('octol/vim-cpp-enhanced-highlight') " C++14 colorscheme
call dein#add('ryanpcmcquen/true-monochrome_vim')
call dein#add('elsuizo/vim-colors-paramount-suizo')
call dein#add('chriskempson/base16-vim')
call dein#add('drjova/airline-drjova') " cool airline theme
call dein#add('tpope/vim-commentary')
" call dein#add('aklt/plantuml-syntax') " Plant UML
call dein#add('arakashic/chromatica.nvim') " fast syntax c files
call dein#add('trevordmiller/nova-vim')
call dein#add('jacoborus/tender.vim') " tender colorscheme
call dein#add('danilo-augusto/vim-afterglow')
call dein#add('huawenyu/neogdb.vim')
call dein#add('dracula/vim')
call dein#add('cespare/vim-toml')
call dein#add('vim-scripts/Zenburn')
call dein#add('rafi/awesome-vim-colorschemes')
call dein#add('icymind/NeoSolarized')
call dein#add('roxma/vim-tmux-clipboard')
call dein#add('racer-rust/vim-racer')
call dein#add('fszymanski/deoplete-emoji')
" check packages instalations
if dein#check_install()
   call dein#install()
endif
call dein#end()

"-------------------------------------------------------------------------
"                     Settings
"-------------------------------------------------------------------------

set noshowmode
set noswapfile
filetype on
" set nowrap
set relativenumber number
filetype plugin indent on
"map cc <Nop>
" set tabstop=2 shiftwidth=2 expandtab
" set conceallevel=0
"map <F4> :vs %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" Height of the command bar
set cmdheight=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" => Text, tab and indent related
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

"set colorcolumn=100
" let &colorcolumn="80"
set wrap linebreak nolist

set wildmode=full

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
" enable deoplete
" tex files super slows
:set lazyredraw

" :set cursorline
" cursor shapes
:set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
\,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
\,sm:block-blinkwait175-blinkoff150-blinkon175
set lazyredraw
set synmaxcol=128
syntax sync minlines=256
set noshowcmd

let g:cpp_experimental_template_highlight = 1
let g:cpp_class_scope_highlight = 1

" python versions
" python2 virtualenv path
let g:python_host_prog = '/home/elsuizo/.pyenv/versions/neovim2/bin/python'
" python3 path
let g:python3_host_prog = '/home/elsuizo/.pyenv/versions/neovim/bin/python3'

" Racer completion
set hidden
let g:racer_cmd = "/home/elsuizo/.cargo/bin/racer"
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" multiple cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" FIXME(elsuizo:2018-03-29): Hacer andar los tags files para Julia
" tagbar piola para Julia language
let g:tagbar_type_julia = {
    \ 'ctagstype' : 'julia',
    \ 'kinds'     : ['a:abstract', 'i:immutable', 't:type', 'f:function', 'm:macro']
    \ }

" FIXME(elsuizo:2018-03-29): ??? yo diria de sacarlo
let g:cpp_class_scope_highlight = 1

" colorschemes
syntax enable
set termguicolors
" backgrounds
" set background=light
set background=dark

colorscheme paramount-suizo " colorscheme minimalistic

autocmd BufRead,BufNewFile *.md setlocal spell complete+=kspell
" highlight bad words in red
autocmd BufRead,BufNewFile *.md hi SpellBad guibg=#ff2929 guifg=#ffffff" ctermbg=224

" disable markdown auto-preview. Gets annoying
let g:instant_markdown_autostart = 1

" NerdTree variables
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1

" deoplete variables
let g:deoplete#enable_at_startup = 1
"Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" " TODO(elsuizo:2018-03-29): ver si esto cambia en algo la velocidad
let g:deoplete#auto_complete_delay = 1

" snippets directorys
let g:neosnippet#snippets_directory='~/.vim/.cache/init.vim/.dein/snippets, ~/.vim/My_snippets'

" " deoplete + neosnippet + autopairs
let g:AutoPairsMapCR=0
" let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" emoji-deoplete
call deoplete#custom#set('emoji', 'filetypes', ['rst', 'jl', 'txt', 'rs'])

" Rust deplete
let g:deoplete#sources#rust#racer_binary='/home/elsuizo/.cargo/bin/racer'
" let g:deoplete#sources#rust#rust_source_path='/home/elsuizo/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
let g:deoplete#sources#rust#rust_source_path='/home/elsuizo/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

" C deoplete
setlocal path+='/home/elsuizo/Development/CIAA_work/Firmware/'
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'

" TODO(elsuizo:2018-03-29): darle mas bola a esto y saber para que se usa
" unite
let g:unite_data_directory='~/.nvim/.cache/unite'
let g:unite_source_history_yank_enable=1
let g:unite_prompt='» '
let g:unite_source_rec_async_command =['ag', '--follow', '--nocolor', '--nogroup','--hidden', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'lib']

" tmux variables
let g:tmux_navigator_no_mappings = 1

" airline variables
let g:airline#extensions#tabline#enabled = 1
"set hidden
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='drjova'
let g:airline#extensions#tabline#tab_nr_type = 1
cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'nos vemos guacho' : 'x'

" neomake variables
let g:neomake_cpp_enable_markers=['g++']
let g:neomake_cpp_gcc_args = ["-std=c++14", "-Wextra", "-Wall", "-fsanitize=undefined","-g"]


"-------------------------------------------------------------------------
"                     Mappings
"-------------------------------------------------------------------------

" airline mappings
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
" tmux mappings
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>

nnoremap <silent> <c-p> :Unite -auto-resize -start-insert -direction=botright file_rec/async<CR>
nnoremap <silent> <leader>i :Unite -auto-resize -start-insert -direction=botright colorscheme<CR>
nnoremap <silent> <leader>u :Unite neobundle/update<CR>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()

" snippets mapps
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

map <C-\> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1

" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" auto indent when press {
autocmd FileType c,cpp,arduino,oil,rust inoremap { {<CR>}<up><end><CR>
nnoremap S :Ag <cword><CR>:cw<CR>

" make
nnoremap <F5> :make<CR>
" make clean
nnoremap <F6> :make clean<CR>

" FIXME(elsuizo:2018-03-29): no se que carajo hace
nnoremap <Space>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" open all .c and .h files
nmap <leader>a :argadd **/*.c **/*.h<cr>
nmap <leader>k :bd<cr>

"open oil files
au BufEnter,BufRead,BufNewFile *.oil setfiletype oil

" open tex files
au BufEnter,BufRead,BufNewFile *.tex setfiletype tex

" Center the buffer in a search
:nnoremap n nzz
:nnoremap N Nzz
:nnoremap * *zz
:nnoremap # #zz
:nnoremap g* g*zz
:nnoremap g# g#zz
nnoremap Q !!$SHELL <CR>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

autocmd FileType python setlocal completeopt-=preview " for jedi popup doc disable
set history=700
" Fast saving
nmap <leader>w :w!<cr>
let g:move_key_modifier = 'C'

" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
map <c-space> ?

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
" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=red guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

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
nmap <F8> :Tagbar<CR>
nmap <leader>F :NERDTreeFind<CR>

" Doxygen generate
nmap <leader>D :Dox<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" FIXME(elsuizo:2018-03-29): no se para que carajo es esto
inoremap <c-d> <esc>ddi
" Navigate between display lines
" noremap  <silent> <Up>   gk
" noremap  <silent> <Down> gj
" noremap  <silent> k gk
" noremap  <silent> j gj
" noremap  <silent> <Home> g<Home>
" noremap  <silent> <End>  g<End>
" inoremap <silent> <Home> <C-o>g<Home>
" inoremap <silent> <End>  <C-o>g<End>

" copy current files path to clipboard
" TODO(elsuizo): no se para que es esto!!!
nmap cp :let @+ = expand("%") <cr>

" TODO(elsuizo:2018-03-29): ver para que era esa table mode
noremap <leader>TM :TableModeToggle<CR>

" FIXME(elsuizo:2018-03-29): ???
" exit insert, dd line, enter insert
inoremap <c-d> <esc>ddi

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
" ino " ""<left>
" ino ' ''<left>
" ino ( ()<left>
" ino [ []<left>
" ino { {}<left>
" ino {<CR> {<CR>}<ESC>O
" map <esc> :noh<cr>
" terminal mappings
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" insert the headers
autocmd BufNewFile *.{tex} call <SID>insert_description_tex()
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

call NERDTreeHighlightFile('h', 'green', 'none', 'green', '#141e23')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#141e23')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#141e23')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#141e23')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#141e23')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#141e23')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#141e23')
call NERDTreeHighlightFile('ts', 'Blue', 'none', '#6699cc', '#141e23')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#141e23')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#141e23')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#141e23')

function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
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
