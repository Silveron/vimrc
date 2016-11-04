" IMPORTANT follow installation steps on:
" https://github.com/Valloric/YouCompleteMe#mac-os-x
" and also run :PluginInstall

" vumble
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" end vumble

" Iterm2 color to 256
set t_Co=256

" Turn on language specific syntax highlighting
syntax on
let python_highlight_all=1
colorscheme zenburn
set nu

" Splitscreen settings
set splitbelow
set splitright

"Ctrl-j move to the split below
"Ctrl-k move to the split above
"Ctrl-l move to the split to the right
"Ctrl-h move to the split to the left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" PEP8 indention
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=99
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" flag whitspaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" utf 8
set encoding=utf-8

" youcompleteme: ensures that the autocomplete window goes away when you’re
" done with it, and the latter defines a shortcut for goto definition. 
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" nerdtree hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" share clipboard
set clipboard=unnamed
