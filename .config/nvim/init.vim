" let g:python_host_skip_check = 1
" let g:python3_host_skip_check = 1

" let g:python_host_prog = '/usr/local/bin/python2'
" let g:python3_host_prog = '/usr/local/bin/python3'

" PLUGINS
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" ---------------------------------------------------------------------------------------------------------------------
" GENERAL PLUGINS
" ---------------------------------------------------------------------------------------------------------------------

" Ctrl+P Fuzzy finder
"Plug 'ctrlpvim/ctrlp.vim'
" Autoclose
Plug 'Townk/vim-autoclose'
" Onedark theme
Plug 'joshdick/onedark.vim'
" Base 16 themes
Plug 'tpope/vim-commentary'
" EditorConfig for Vim
Plug 'editorconfig/editorconfig-vim'
" Airline
Plug 'vim-airline/vim-airline'
" Git in the gutter
Plug 'airblade/vim-gitgutter'
" Git commands in the command line
Plug 'tpope/vim-fugitive'
" Vim Sugar for UNIX commands
Plug 'tpope/vim-eunuch'
" Distraction-free mode
Plug 'junegunn/goyo.vim', { 'for': ['md','markdown'] }
" Line/paragraph highlighting
Plug 'junegunn/limelight.vim', { 'for': ['md','markdown'] }
" Simple gulp wrapper for Vim
Plug 'vim-scripts/gulp-vim'
" Emmet.io for VIM
Plug 'mattn/emmet-vim'
" Prettier for cleaning up things
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'swift' ] }
" ALE Linter
" Plug 'w0rp/ale'
" fzf
"Plug '/usr/local/opt/fzf' " fzf installed via homebrew already
Plug 'junegunn/fzf.vim'
" Search with ag
Plug 'mileszs/ack.vim'
" Greplace
Plug 'skwp/greplace.vim'
" Supertab
" Plug 'ervandew/supertab'
" YouCompleteMe
" Plug 'valloric/youcompleteme'
" Surround
Plug 'tpope/vim-surround'
" Snipmate
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Optional Snippets
" Plug 'honza/vim-snippets'
" PGP Fun in Vim
Plug 'jamessan/vim-gnupg'
" Tabular to keep things looking nice
Plug 'godlygeek/tabular'
" Simple to-do checkoffs
Plug 'vitalk/vim-simple-todo'
" ---------------------------------------------------------------------------------------------------------------------
" WEB-DEV LANGAUGES 
" ---------------------------------------------------------------------------------------------------------------------

" HTML5 syntax
Plug 'othree/html5.vim', { 'for': ['html'] }
" SCSS syntax
Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss'] }
" Color highlighter
Plug 'ap/vim-css-color', { 'for': ['css', 'md', 'markdown', 'sass', 'scss', 'less', 'javascript'] }
" CSS color highlighter
"Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'md', 'markdown', 'sass', 'scss', 'less', 'javascript'] }
" SCSS colorizer
"Plug 'shmargum/vim-sass-colors', { 'for': ['scss'] }
" Markdown syntax and helpers
Plug 'plasticboy/vim-markdown', { 'for': ['md','markdown']}
" Table mode
Plug 'dhruvasagar/vim-table-mode'
" Toggle ticks with <leader>tt
Plug 'jkramer/vim-checkbox'
" Git syntax
Plug 'tpope/vim-git'
" JSON syntax
Plug 'sheerun/vim-json'
" Polyglot
Plug 'sheerun/vim-polyglot'
" HTACG HTML Tidy
Plug 'htacg/tidy-html5'
" Syntax highlighting for vue compnents
Plug 'posva/vim-vue'
" Intent lines so I can better figure out when I've double-closed or
" never-clsoed a tag.
Plug 'yggdroot/indentline'
" Initialize plugin system
:call plug#end()

" ---------------------------------------------------------------------------------------------------------------------
" KEYBOARD SHORTCUTS 
" ---------------------------------------------------------------------------------------------------------------------

" Ctrl + P → to CtrlP fuzzy find
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" Map start key separately from next key
" let g:multi_cursor_start_key='<F6>'

" ---------------------------------------------------------------------------------------------------------------------
" SETTINGS 
" ---------------------------------------------------------------------------------------------------------------------

" Make Working directory follow NERDTree
" let g:NERDTreeChDirMode = 2
" Tell NERDTree to use minimal UI
" let g:NERDTreeMinimalUI = 1
" Close windown if NERDTree is the only thing open
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Open NERDTree with ctrl-n
" map <c-n> :NERDTreeToggle<CR>

" Set CTRLP to search working directory
" let g:ctrlp_working_path_mode = 'rw'

" Indentline settings
let g:indentLine_char_list = ['|', '¦', '┆', '┊'] "Different characters for each level

" Settings for EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" if ag is installed (the_silver_search) use it in ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Emmet settings
let g:user_emmet_mode='i'
let g:user_emmet_install_global = 0
autocmd FileType html,css,md,markdown EmmetInstall
let g:user_emmet_leader_key='<c-z>'

" Vim Markdown Settings
set conceallevel=2
let g:vim_markdown_fenced_languages = ['bash=sh', 'ini=dosini', 'html=html', 'css=css', 'js=javascript']
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_extensions_in_markdown = 0
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'

" Limelight settings
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = '#777777'

autocmd! User GoyoEnter Limelight  "Turn on limelight with goyo
autocmd! User GoyoEnter GitGutterDisable  "Turn off git gutter with goyo
autocmd! User GoyoLeave GitGutterEnable  "Turn on git gutter with goyo
autocmd! User GoyoLeave Limelight! "Opposite of the above, duh!

" Table Mode Settings
map <leader>tm <Plug>TableModeToggle 
let g:table_mode_corner='|'

" Prettier settings
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync
" number of spaces per indentation level
let g:prettier#config#tab_width = 4
" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" fzf settings
let g:fzf_tags_command = 'ctags -R --exclude=node_modules --exclude@.git'

" GitGutter Settings
set signcolumn=yes
set updatetime=100
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

" Theme settings
syntax on
" colorscheme onedark 

" Airline Settings
let g:airline_detect_modified=1
let g:airline#extensions#whitespace#enabled=0
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline_detect_spell = 1

" Greplace Settings
set grepprg=ag  " we want to use ag, not grep
let g:grep_cmd_opts = '--line-numbers --noheading'

" ALE Settings and Shortcuts
" nmap <silent> <C-k> <Plug>(ale_previous_wrap) -warning -error -info
" nmap <silent> <C-j> <Plug>(ale_next_wrap) -warning -error -info 


" Keymaps
" nnoremap j gj
" Makes j navigate based on screen lines, rather than actual lines
" noremap k gk
" nnoremap ; :

" Custom commands
let mapleader = "," " Easier than default slash prefix for custom commands
nnoremap <leader>ga :!git add -A
nnoremap <leader>gp :Gulp<cr>
nnoremap <leader>gs :!git status<cr>
nnoremap <leader>ga :!git add -A<cr>
nnoremap <leader>gc :!git commit -m "
nnoremap <leader>gp :!git push<cr>
nnoremap <leader>ntt :NERDTreeToggle<cr>
nnoremap <leader>nt :NERDTree<cr>
" Fold html tag
nnoremap <leader>ft Vatzf
" edit vimrc in split
nnoremap <leader>ev :tabe $MYVIMRC<cr>
"nnoremap <leader>es :e ~/.config/nvim/autoloat/snippets/
" open a new split, move focus to it
nnoremap <leader>w <C-w>v<C-w>l
" no need to ctrl w when splitting windows
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
" fzf shortcuts
" find in buffers
nmap <leader>b :Buffers<CR>
" find in project
nmap ; :Files<CR>
nmap <leader>t :Tags<CR>
" remove search highlight
nmap <Leader><space> :nohlsearch<cr> 
" copy and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
" Statamic keyboard shortcuts
nmap <leader>sbl :e site/themes/<tab>sass/blocks/<cr>
nmap <leader>sba :e site/themes/<tab>sass/base/<cr>
nmap <leader>sv :e site/themes/<tab>sass/vendor/<cr>
nmap <leader>sl :e site/themes/<tab>layouts/<cr>
nmap <leader>ste :e site/themes/<tab>templates/<cr>
nmap <leader>sp :e site/themes/<tab>partials/<cr>
nmap <leader>sth :e site/themes/<tab><cr>
nmap <leader>se :e site/settings/environments<cr>
nmap <leader>env :e .env<cr>


au FocusLost * :wa " autosave when focus is lost

" Autocommands inside an autogroup is a good idea, I don't remmeber why
augroup autosourcing
  au!
  au BufWritePost init.vim source % " Automatically source the Vimrc file on save. 
augroup END

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" Other Settings
filetype on
set encoding=utf8
"set guifont=Knack\ Nerd\ Font\ Regular:h15
syntax on
colorscheme onedark
set wildcharm=<tab> " lets you use <tab> in macros
set ignorecase
set smartcase
set gdefault " applies substitutaions globaly so search doesnt need to have /g added
set modifiable
set autowriteall "Automatically write the file when switching buffers.
set complete=.,w,b,u "Set our desired autocompletion matching.
set hidden
set history=100
filetype indent on
set tabstop=8 softtabstop=4 expandtab shiftwidth=4 smarttab
set shiftwidth=4
set smartindent
set autoindent
set breakindent "just spent 90 minutes on a type that this would have helped me spot
set number relativenumber
set hlsearch
set incsearch " Turn on incremental search
set showmatch
set scrolloff=5
set wildignore+=*.log,*.sql,*.cache
set foldmethod=syntax
set foldnestmax=1
set foldenable " make sure things don't open up already folded
set foldlevel=1 " let's not go crazy
let g:netrw_browsex_viewer="linkhandler"
