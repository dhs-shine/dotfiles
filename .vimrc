set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'surround.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'pep8'
Plugin 'The-NERD-tree'
Plugin 'https://github.com/davidhalter/jedi-vim.git'
Plugin 'https://github.com/msanders/snipmate.vim.git'
Plugin 'pyflakes.vim'
Plugin 'TaskList.vim'
Plugin 'Gundo'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Command-T'
Plugin 'minibufexpl.vim'
Plugin 'pytest.vim'

call vundle#end()
syntax on
filetype on
filetype plugin indent on

let python_version_2 = 1
let python_highlight_all = 1

set nu
autocmd Filetype python set ts=4
autocmd Filetype python set sw=4
autocmd Filetype python set sts=4
autocmd Filetype python set colorcolumn=80
autocmd Filetype python set smartindent
autocmd Filetype python set expandtab

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <c-n> :NERDTreeToggle<cr>
map <leader>gd :GundoToggle<cr>
map <leader>td <Plug>TaskList

set t_Co=256
set laststatus=2

let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix = 0

nnoremap <silent> <F5> :!clear;python %<CR>
