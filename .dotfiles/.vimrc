filetype indent on
syntax off

augroup enableSyntax
    autocmd!
    autocmd FileType dircolors syntax enable
augroup END

augroup jumpCursor
    autocmd!
    autocmd BufReadPost *
                \ if line("'\"") >= 1 && line("'\"") <= line("$")
                \ | execute "normal! g`\""
                \ | endif
augroup END

" reset
set nobackup
set noloadplugins
set noshowmatch

" set
set autoindent
set backspace=indent,eol,start
set expandtab
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:^,extends:>,precedes:<
set mouse=
set ruler
set scrolloff=999
set shiftwidth=0
set shortmess=tT
set showcmd
set showmode
set smartcase
set smartindent
set softtabstop=-1
set tabstop=4
set timeout
set timeoutlen=3000
set ttimeout
set ttimeoutlen=100
set whichwrap=<,>,[,]
set wrap
