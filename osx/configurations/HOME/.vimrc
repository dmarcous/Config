set rtp+=/usr/local/opt/fzf
set number                      "Line numbers are good
set esckeys
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set autoread                    "Reload files changed outside vim
set hidden
syntax on
set autoindent
set smartindent
set smarttab
filetype plugin on
filetype indent on
set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
syntax enable
set background=dark
colorscheme delek
color delek
set nocompatible
set clipboard=unnamed
set ttyfast
set binary
set noeol
set modeline
set modelines=4
set cursorline
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set hlsearch
set incsearch
set laststatus=2
set mouse=a
set nostartofline
set ruler
set title
set scrolloff=3