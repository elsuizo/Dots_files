"
"        .__               .__                     ._
"   ____ |  |   ________ __|__|___________   ___  _|__| ____________   ____
" _/ __ \|  |  /  ___/  |  \  \___   /  _ \  \  \/ /  |/     \_  __ \_/ ___\
" \  ___/|  |__\___ \|  |  /  |/    (  <_> )  \   /|  |  Y Y  \  | \/\  \___
"  \___  >____/____  >____/|__/_____ \____/    \_/ |__|__|_|  /__|    \___  >
"      \/          \/               \/                      \/            \/
"
" Based in the config of: Mike Hartington
" repo: https://github.com/mhartington/dotfiles/
" and the awesome vimrc
" repo: https://github.com/amix/vimrc

" Setup NeoBundle  ----------------------------------------------------------{{{
" If vundle is not installed, do it first
if (!isdirectory(expand("$HOME/.vim/repos/github.com/Shougo/dein.vim")))
   call system(expand("mkdir -p $HOME/.vim/repos/github.com"))
   call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.vim/repos/github.com/Shougo/dein.vim"))
endif
set nocompatible
" Required:
set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim/
" set runtimepath+=~/Github/deoplete-angular/

" Required:
call dein#begin(expand('~/.vim'))
let pluginsExist = 0
" Let NeoBundle manage NeoBundle
" Required:
" colorschemes
" call dein#add('flazz/vim-colorschemes.git')
call dein#add('Shougo/dein.vim')
" syntax
" call dein#add('othree/yajs.vim', {'on_ft': 'javascript'})
" call dein#add('othree/jsdoc-syntax.vim', {'on_ft':['javascript', 'typescript']})
" call dein#add('othree/es.next.syntax.vim', {'on_ft': 'javascript'})
" call dein#add('1995eaton/vim-better-javascript-completion', {'on_ft': ['javascript']})
" call dein#add('othree/javascript-libraries-syntax.vim')
" call dein#add('kchmck/vim-coffee-script', {'on_ft': 'coffee'})
" call dein#add('hail2u/vim-css3-syntax', {'on_ft':['css','scss']})
call dein#add('elzr/vim-json', {'on_ft': 'json'})
call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
call dein#add('dhruvasagar/vim-table-mode')
call dein#add('suan/vim-instant-markdown', {'on_ft': 'markdown'})
call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
" call dein#add('HerringtonDarkholme/yats.vim', {'on_ft': 'typescript'})
" call dein#add('Quramy/tsuquyomi', {'on_ft': 'typescript'})

call dein#add('mhartington/oceanic-next')
"call dein#add('Yggdroot/indentLine')
" call dein#add('Raimondi/delimitMate', {'on_ft': ['javascript', 'typescript', 'css', 'scss']})
" call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})

call dein#add('tpope/vim-fugitive')
call dein#add('jreybert/vimagit')
call dein#add('mhinz/vim-signify')
call dein#add('Xuyuanp/nerdtree-git-plugin')
"call dein#add('https://github.com/jaxbot/github-issues.vim')

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
" call dein#add('mattn/emmet-vim', {'on_ft': 'html'})
call dein#add('Chiel92/vim-autoformat')
" call dein#add('ap/vim-css-color')
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
" call dein#add('matthewsimo/angular-vim-snippets')
" call dein#add('mhinz/vim-sayonara')
" call dein#add('mattn/webapi-vim')
" call dein#add('mattn/gist-vim')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('rhysd/github-complete.vim')
" call dein#add('junegunn/goyo.vim')
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
" call dein#add('JuliaEditorSupport/deoplete-julia') " Julia completion support
call dein#add('rust-lang/rust.vim') " Rust
call dein#add('sebastianmarkow/deoplete-rust') " Rust
call dein#add('vim-scripts/DoxygenToolkit.vim') " Doxygen
" call dein#add('altercation/vim-colors-solarized') " Solarized original
call dein#add('frankier/neovim-colors-solarized-truecolor-only')
call dein#add('junegunn/vim-easy-align') " align
" call dein#add('derekwyatt/vim-fswitch') " Switch between .c and .h
call dein#add('morhetz/gruvbox') " Gruvbox colorscheme
call dein#add('chrisbra/csv.vim') " CSV data files
call dein#add('vim-scripts/OIL.vim') " OIL syntax highlight
call dein#add('4Evergreen4/vim-hardy') " Arduino IDE integration
call dein#add('jplaut/vim-arduino-ino') "
call dein#add('sickill/vim-monokai') " Molokai colorscheme
call dein#add('dermusikman/sonicpi.vim') " Sonic pi plugging
call dein#add('vim-scripts/DrawIt') " Draw ASCII art with neovim
call dein#add('robertmeta/nofrils') " minimalistic colorscheme(gray and black)
"call dein#add('SirVer/ultisnips') " Ultisnip (no anda por ahora)
" call dein#add('octol/vim-cpp-enhanced-highlight') " C++14 colorscheme
call dein#add('ryanpcmcquen/true-monochrome_vim')
" call dein#add('owickstrom/vim-colors-paramount')
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
"-------------------------------------------------------------------------

if dein#check_install()
   call dein#install()
endif
call dein#end()

" }}}

" System Settings  ----------------------------------------------------------{{{
" Let airline tell me my status
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
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Text, tab and indent related
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
autocmd FileType c,cpp,arduino,oil,rust inoremap { {<CR>}<up><end><CR>
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
  "set undodir="$HOME/.VIM_UNDO_FILES"
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

  "test
  ":set cursorline!
  " cursor shapes
  :set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175
  set lazyredraw
  set synmaxcol=128
  syntax sync minlines=256
  set noshowcmd
  " elsuizo adds
  let g:cpp_experimental_template_highlight = 1
  let g:cpp_class_scope_highlight = 1
  " python3 path
  let g:python3_host_prog = '/home/elsuizo/.pyenv/versions/neovim/bin/python3'
  " magic for seach the current word in cursor wirh AG(silversearchear)
 nnoremap S :Ag <cword><CR>:cw<CR>
 " make
 nnoremap <F5> :make<CR>
 " make clean
 nnoremap <F6> :make clean<CR>
 nnoremap <Space>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" }}}
"
" System mappings  ----------------------------------------------------------{{{
"-------------------------------------------------------------------------
"elsuizo adds
"-------------------------------------------------------------------------
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"---------------------------------------------------------------
" show all White spaces and tabs
"---------------------------------------------------------------
if &listchars ==# 'eol:$'
   set listchars=trail:-,nbsp:+
endif
set list                " Show problematic characters.
" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=red guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/
" open the fucking config file
nnoremap <leader>c :e! ~/.config/nvim/init.vim<cr>
"--------------------------------------------------------------
" Parenthesis/bracket
"----------------------------------------------------------------
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
" ,f to format code, requires formatters: read the docs
" noremap <leader>f :Autoformat<CR>
noremap <leader>TM :TableModeToggle<CR>
" exit insert, dd line, enter insert
inoremap <c-d> <esc>ddi
" Los saco por ahora porque no es una buena practica
" noremap H ^
" noremap L g_
" noremap J 5j
" noremap K 5k
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just wap the mapping
" nnoremap : ;
" give it a try and you will like it
nnoremap ; :
"complete files
inoremap <c-f> <c-x><c-f>
" copy and paste
" TODO: lo que pasa con esto es que te quita el bloque visual!!!
" vnoremap <silent> <C-c> "+y
" nnoremap <silent> <C-v> "+p
" inoremap <silent> <C-v>  <C-o>"+p
" copy to the end of a line
" noremap Y y$
vnoremap y "*y<CR>
nnoremap Y "*Y<CR>
vnoremap y myy`y
vnoremap Y myY`y
" multiple cursor
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
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

" tagbar piola para Julia language
let g:tagbar_type_julia = {
    \ 'ctagstype' : 'julia',
    \ 'kinds'     : ['a:abstract', 'i:immutable', 't:type', 'f:function', 'm:macro']
    \ }
" nnoremap <leader>e :call <SID>SynStack()<CR>
" function! <SID>SynStack()
"    if !exists("*synstack")
"       return
"    endif
"    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc
"
" function! s:PlaceholderImgTag(size)
"    let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
"    let [width,height] = split(a:size, 'x')
"    execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
" endfunction
" command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)

" }}}

" Themes, Commands, etc  ----------------------------------------------------{{{
" Theme
"-------------------------------------------------------------------------
" Colorschemes!!!
"-------------------------------------------------------------------------
syntax enable
set termguicolors
" set background=light
set background=dark
" colorscheme PaperColor
" colorscheme zenburn
" colorscheme paramount-suizo " colorscheme minimalistic
" colorscheme afterglow
" colorscheme solarized " colorscheme minimalistic
" colorscheme alduin " alduin colorscheme
" colorscheme nofrils-dark
colorscheme gruvbox
" no need to fold things in markdown all the time
let g:vim_markdown_folding_disabled = 0
" turn on spelling for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell complete+=kspell
" highlight bad words in red
autocmd BufRead,BufNewFile *.md hi SpellBad guibg=#ff2929 guifg=#ffffff" ctermbg=224
" disable markdown auto-preview. Gets annoying
let g:instant_markdown_autostart = 1
"}}}

" Fold, gets it's own section  ----------------------------------------------{{{

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}



set foldtext=MyFoldText()

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

autocmd FileType vim setlocal fdc=1
set foldlevel=99
" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za
autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldlevel=0

" au FileType html call HTMLFold()
" autocmd FileType html setlocal foldmethod=syntax
autocmd FileType html setlocal fdl=99

" autocmd FileType javascript call JavaScriptFold()
autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99
autocmd FileType javascript,typescript,css,scss,json setlocal foldmethod=marker
autocmd FileType javascript,typescript,css,scss,json setlocal foldmarker={,}
autocmd FileType coffee setl foldmethod=indent
au FileType html nnoremap <buffer> <leader>F zfat
" }}}

" NERDTree ------------------------------------------------------------------{{{

map <C-\> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=45
let g:NERDTreeAutoDeleteBuffer=1

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction


" call NERDTreeHighlightFile('jade', 'green', 'none', 'green', 'none')
" call NERDTreeHighlightFile('md', 'blue', 'none', '#6699CC', 'none')
" call NERDTreeHighlightFile('config', 'yellow', 'none', '#d8a235', 'none')
" call NERDTreeHighlightFile('conf', 'yellow', 'none', '#d8a235', 'none')
" call NERDTreeHighlightFile('json', 'green', 'none', '#d8a235', 'none')
" call NERDTreeHighlightFile('html', 'yellow', 'none', '#d8a235', 'none')
" call NERDTreeHighlightFile('css', 'cyan', 'none', '#5486C0', 'none')
" call NERDTreeHighlightFile('scss', 'cyan', 'none', '#5486C0', 'none')
" call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', 'none')
" call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', 'none')
" call NERDTreeHighlightFile('ts', 'Blue', 'none', '#6699cc', 'none')
" call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', 'none')
" call NERDTreeHighlightFile('gitconfig', 'black', 'none', '#686868', 'none')
" call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#7F7F7F', 'none')

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#141e23')
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

"}}}

" Snipppets -----------------------------------------------------------------{{{

"Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/.cache/init.vim/.dein/snippets, ~/.vim/My_snippets'
" Snippets
  let g:deoplete#enable_at_startup = 1
  " let g:neosnippet#enable_snipmate_compatibility = 1
  " let g:neosnippet#expand_word_boundary = 1
  " imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  " smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  " xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"

" " deoplete + neosnippet + autopairs
let g:AutoPairsMapCR=0
" let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

" Rust deplete
let g:deoplete#sources#rust#racer_binary='/home/elsuizo/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/elsuizo/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
" C deoplete
setlocal path+='/home/elsuizo/Development/CIAA_work/Firmware/'
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'
" enable disable latex2unicode
" noremap <expr> <F7> LaTeXtoUnicode#Toggle()
" inoremap <expr> <F7> LaTeXtoUnicode#Toggle()
"
" let g:latex_to_unicode_suggestions = 1

" unite ---------------------------------------------------------------------{{{
"
let g:unite_data_directory='~/.nvim/.cache/unite'
let g:unite_source_history_yank_enable=1
let g:unite_prompt='» '
let g:unite_source_rec_async_command =['ag', '--follow', '--nocolor', '--nogroup','--hidden', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'lib']
"
nnoremap <silent> <c-p> :Unite -auto-resize -start-insert -direction=botright file_rec/async<CR>
nnoremap <silent> <leader>i :Unite -auto-resize -start-insert -direction=botright colorscheme<CR>
nnoremap <silent> <leader>u :Unite neobundle/update<CR>
"
" " Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
"
function! s:unite_settings() "{{{
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction "}}}
"
" " Git from unite...ERMERGERD ------------------------------------------------{{{
" let g:unite_source_menu_menus = {} " Useful when building interfaces at appropriate places
" let g:unite_source_menu_menus.git = {
"   \ 'description' : 'Fugitive interface',
"   \}
" let g:unite_source_menu_menus.git.command_candidates = [
"   \[' git status', 'Gstatus'],
"   \[' git diff', 'Gvdiff'],
"   \[' git commit', 'Gcommit'],
"   \[' git stage/add', 'Gwrite'],
"   \[' git checkout', 'Gread'],
"   \[' git rm', 'Gremove'],
"   \[' git cd', 'Gcd'],
"   \[' git push', 'exe "Git! push " input("remote/branch: ")'],
"   \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
"   \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
"   \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
"   \[' git fetch', 'Gfetch'],
"   \[' git merge', 'Gmerge'],
"   \[' git browse', 'Gbrowse'],
"   \[' git head', 'Gedit HEAD^'],
"   \[' git parent', 'edit %:h'],
"   \[' git log commit buffers', 'Glog --'],
"   \[' git log current file', 'Glog -- %'],
"   \[' git log last n commits', 'exe "Glog -" input("num: ")'],
"   \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
"   \[' git log until date', 'exe "Glog --until=" input("day: ")'],
"   \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
"   \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
"   \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
"   \[' git mv', 'exe "Gmove " input("destination: ")'],
"   \[' git grep',  'exe "Ggrep " input("string: ")'],
"   \[' git prompt', 'exe "Git! " input("command: ")'],
"   \] " Append ' --' after log to get commit info commit buffers
" nnoremap <silent> <Leader>g :Unite -direction=botright -silent -buffer-name=git -start-insert menu:git<CR>
"}}}
"}}}

" fugitive
" nmap <leader>gs :Gstatus<CR>
" nmap <leader>gc :Gcommit<CR>i
" Navigate between vim buffers and tmux panels ------------------------------{{{
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
"}}}

" vim-airline ---------------------------------------------------------------{{{
let g:airline#extensions#tabline#enabled = 1
"set hidden
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='monochrome'
" let g:airline_theme='minimalist'
" let g:airline_theme = 'solarized'
" let g:airline_theme = 'afterglow'
" let g:airline_theme='papercolor'
let g:airline_theme='gruvbox'
" let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#tab_nr_type = 1
cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'nos vemos guacho' : 'x'
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
"}}}

" Linting -------------------------------------------------------------------{{{
  function! neomake#makers#ft#javascript#eslint()
      return {
          \ 'args': ['-f', 'compact'],
          \ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
          \ '%W%f: line %l\, col %c\, Warning - %m'
          \ }
  endfunction
  let g:neomake_javascript_enabled_makers = ['eslint']
  autocmd! BufWritePost * Neomake
  function! JscsFix()
      let l:winview = winsaveview()
      % ! jscs -x
      call winrestview(l:winview)
  endfunction
  command JscsFix :call JscsFix()
  noremap <leader>j :JscsFix<CR>

  let g:neomake_cpp_enable_markers=['g++']
  let g:neomake_cpp_gcc_args = ["-std=c++14", "-Wextra", "-Wall", "-fsanitize=undefined","-g"]
"}}}

" Insert headers -------------------------------------------------------------------{{{


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
"}}}
