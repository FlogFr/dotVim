"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File:             shortcuts.vim
" Author:           aRkadeFR
" Description:      Shortcuts in vim for some commands
" Last Modified:    2017-11-24
" Version:          0.1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

command! Bash :execute 'e ~/.bashrc'
command! GitVimPush :execute '!(cd ~/.vim ; git add . ; git commit -a -v -m "' . strftime("%D") . ' update vim git" ; git push)'
command! GitVimPull :execute '!(cd ~/.vim ; git fetch ; git status)'