set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" prevent nvim messing with term shape set in alacritty
set guicursor=
source ~/.vimrc
