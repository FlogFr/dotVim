" Activation/Desactivation de la fenetre
" NERDTreeToggle d'exploration de fichiers
map <F8> :make!<CR>
map <F7> :make clean<CR>
map <F5> :make check<CR>

map <m-a> ggVG

" Go to windows
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt

" F9 to F12 => show open windows
noremap <silent> <F9> <Esc>:NERDTreeToggle<CR>
noremap <silent> <F10> :BufExplorerHorizontalSplit<CR>

" paste toggle
set pastetoggle=<F9>
