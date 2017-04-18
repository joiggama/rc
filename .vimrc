""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/.vimrc
"
" Dependencies:
"
" - fzf
" - neovim editor
" - python-3's neovim package
" - rbenv
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config - Styling

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme molokai


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config - Clipboard
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed     " Use system clipboard


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config - Files
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set modelines=0           " Enable modelines
set nobackup              " Disable backup
set noswapfile            " Disable swap
set nowritebackup         " Disable backup


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config - Indentation
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " Enable file type based indentation
set expandtab             " Expand tabs to spaces
set shiftwidth=2          " Set number of spaces for shift/auto indentation
set tabstop=2             " Set Number of spaces for tab expansion


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config - Search
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch              " Enable result hightlighting
set ignorecase            " Ignore case
set smartcase             " Mind uppercase characters in the given pattern


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config - UI/UX
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nofoldenable          " Disable folding
set nowrap                " Disable line wrapping
set number                " Display line numbersset
set synmaxcol=120         " Cap syntax highlighting to 120 columns


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping - Meta
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>ve :edit ~/.vimrc<cr>
map <leader>vs :source ~/.vimrc<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping - junegunn/vim-plug
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>pi :source ~/.vimrc <bar> :PlugInstall<cr>
map <leader>ps :source ~/.vimrc <bar> :PlugStatus<cr>
map <leader>pc :source ~/.vimrc <bar> :PlugClean<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

  Plug 'airblade/vim-gitgutter'
  Plug 'benekastah/neomake'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'chrisbra/csv.vim'
  Plug 'garbas/vim-snipmate' | Plug 'MarcWeber/vim-addon-mw-utils' | Plug 'tomtom/tlib_vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install' }
  Plug 'junegunn/fzf.vim'
  Plug 'mattn/gist-vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/deoplete.nvim'
  "Plug 'takac/vim-hardtime'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-abolish'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-eunuch'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-rake'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Config
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 0
let g:hardtime_default_on = 1
let g:ruby_path = system('echo $HOME/.rbenv/shims')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Mapping - benakastah/neomake
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! BufWritePost * Neomake


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Mapping - bronson/vim-trailing-whitespace
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>fw :FixWhitespace<cr>
autocmd BufWritePre * :FixWhitespace


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin mapping - junegunn/fzf && junegunn/fzf-vim
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" List and select from file list
map <leader><tab> :Files<cr>
" List and select from mappings list
map <leader>lm <plug>(fzf-maps-n)
" Insert mode completion
imap <leader>f<tab> <plug>(fzf-complete-file)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin mapping - junegunn/vim-easy-align
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Interactive visual mode (e.g. vipa)
xmap a <plug>(EasyAlign)
" Interactive motion/text object (e.g. aip)
nmap a <plug>(EasyAlign)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin mapping - scrooloose/nerdcommenter
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger commenting on every mode
imap <leader>/ <esc><plug>NERDCommenterToggle<cr>i
nmap <leader>/ <plug>NERDCommenterToggle<cr>
vmap <leader>/ <plug>NERDCommenterToggle


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin mapping - scrooloose/nerdtree
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open up NERDTree panel
map <leader>n :NERDTreeToggle<cr> :NERDTreeMirror<cr>
