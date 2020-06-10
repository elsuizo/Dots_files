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

" Remember cursor position between vim sessions
autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
autocmd BufRead * normal zz

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
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline_powerline_fonts = 1

" colorscheme de airline
let g:airline_theme='minimalist'

let g:airline#extensions#tabline#tab_nr_type = 1
nmap <leader>t :terminal<cr>
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

call plug#begin('~/.vim/plugged')
"-------------------------------------------------------------------------
"                          pluggings
"-------------------------------------------------------------------------
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'jceb/vim-orgmode'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'majutsushi/tagbar' " TODO no se si anda bien
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/DoxygenToolkit.vim' " Doxygen
Plug 'jiangmiao/auto-pairs'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'chrisbra/csv.vim'         "  CSV data  files
Plug 'vim-scripts/utl.vim'      "  orgmode
Plug 'tpope/vim-repeat'         "  orgmode
Plug 'vim-scripts/taglist.vim'  "  orgmode
Plug 'chrisbra/NrrwRgn'         "  orgmode
Plug 'tpope/vim-pathogen'       "  orgmode
Plug 'mattn/calendar-vim'       "  orgmode
Plug 'vim-scripts/SyntaxRange'  "  orgmode
Plug 'matze/vim-move' "move block of text
Plug 'tomtom/tcomment_vim'
Plug 'Numkil/ag.nvim'
Plug 'rust-lang/rust.vim' " Rust
Plug 'vim-scripts/OIL.vim' " OIL syntax highlight
Plug 'roxma/vim-tmux-clipboard'
"-------------------------------------------------------------------------
"                          Pluggin themes
"-------------------------------------------------------------------------
Plug 'elsuizo/vim-colors-paramount-suizo' " minimalistic emulatin the NETS colors
Plug 'elsuizo/monosvkem'
"-------------------------------------------------------------------------
"                          Plugin syntaxes
"-------------------------------------------------------------------------
Plug 'hdima/python-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
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
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
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
  else
    call CocAction('doHover')
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

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
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
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
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

" togle NERDTree
map <C-\> :NERDTreeToggle<CR>

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

" comandos para Rust cargo
au FileType rust nmap <leader>r :Cargo run<cr>
au FileType rust nmap <leader>t :Cargo test<cr>
au FileType rust nmap <leader>tc :Cargo check<cr>

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
" usar el clipboard del sistema
set clipboard+=unnamedplus

let g:default_julia_version = '1.4'
" language server
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
\   'julia-1.4': ['julia-1.4', '--startup-file=no', '--history-file=no', '-e', '
\       using LanguageServer;
\       using Pkg;
\       import StaticLint;
\       import SymbolServer;
\       env_path = dirname(Pkg.Types.Context().env.project_file);
\       debug = false;
\
\       server = LanguageServer.LanguageServerInstance(stdin, stdout, debug, env_path, "", Dict());
\       server.runlinter = true;
\       run(server);
\   ']
\ }

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
