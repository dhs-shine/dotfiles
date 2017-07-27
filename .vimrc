set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Common
Plugin 'gmarik/Vundle.vim' " Vundle
Plugin 'surround.vim' " Quoting/Parenthesizing made simple
Plugin 'tpope/vim-fugitive' " Git Wrapper
Plugin 'The-NERD-tree' " A Tree Explorer plugin for vim
Plugin 'msanders/snipmate.vim' " Provide support for textual snippets
Plugin 'TaskList.vim' " Eclipse like task list
Plugin 'Gundo' " Visualize your undo tree
Plugin 'Lokaltog/vim-powerline' " Ultimate vim statusline utility
Plugin 'wincent/command-t' " Fast file navigation for vim
Plugin 'minibufexpl.vim' " Elegant buffer explorer

" For Python
" Plugin 'pep8' " Style guide for python code
Plugin 'davidhalter/jedi-vim' " VIM binding to the autocompletion library Jedi
Plugin 'mathieui/pyflakes3-vim' " Pyflakes on-thefly Python code checking
Plugin 'nvie/vim-flake8' " PEP8 lint
Plugin 'pytest.vim' " Python unit test
Plugin 'tell-k/vim-autopep8' " Autopep8

call vundle#end()
syntax on
filetype on
filetype plugin indent on

let python_version_3 = 1
let python_highlight_all = 1

set nu
color jellybeans
autocmd Filetype python set ts=4
autocmd Filetype python set sw=4
autocmd Filetype python set sts=4
autocmd Filetype python set colorcolumn=80
autocmd Filetype python set smartindent
autocmd Filetype python set expandtab
autocmd Filetype python map <buffer> <f3> :call Flake8()<CR>
autocmd Filetype python noremap <buffer> <f8> :call Autopep8()<CR>
autocmd Filetype python nnoremap <silent> <F5> :!clear;python3 %<CR>

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

"let g:pep8_map='<leader>8'
let g:pyflakes_use_quickfix=0
let g:flake8_show_quickfix=1
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1
let g:flake8_max_markers=500
