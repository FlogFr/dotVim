" Chargement de pathogen qui gere le runtime
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Lecture de tous les raccourcis claviers
execute 'source ' . $HOME . '/.vim/shortkeys.vim'
execute 'source ' . $HOME . '/.vim/a.vim'
execute 'source ' . $HOME . '/.vim/functions.vim'
execute 'source ' . $HOME . '/.vim/hicursorwords.vim'

" Performance
set nobackup		"Git for tracking version and not vim !
set noswapfile		"Git for tracking version and not vim !

" History
set history=1000 " much more history than base
set undolevels=1000 " much more undo
set title " Set the terminal title's
set visualbell " Don't do beep
" set noerrorbells " Don't beep
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Display :
"""""""""""""""""""""""""""""""""""""""""""""""""""
set number
syntax on
colorscheme rkadeFR
set showmatch 		" Show matching parenthesis
set hlsearch		" Highligh search
set incsearch		" Set Current Highlight as you type
set scrolloff=20	" Don't show the search as the first line
set ruler			" Show the line and column number
set showcmd			" Show a line in the end of the terminal 
set so=10			" Set the cursor to not go on top of the screen
set cmdheight=2		" Set the command bar height
set wildmenu		" Set the wild menu
set mat=1			" Set second to blink
set laststatus=2	" Show the last status/command
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set foldmarker={,}
set foldmethod=marker
set foldlevelstart=4
set visualbell t_vb=    "Don't flashing the screen on error
set showmode            "Show the current mode for insert
set splitbelow
set splitright
"set mouse=a         " Enable the mouse


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Text editing
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't have to write or undo for editing another file
set hidden 			" Very important !
"""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set autoindent 			" Possible : smartindent, autoindent, cindent
set expandtab 		" Mettre des tabs et aucuns espaces
set tabstop=4 			" Mettre une tabulation 
set shiftwidth=4 		" Nombre d'espaces pour une indentation
set shiftround			" Use multiple shift on < | > command
set ignorecase			" Ignore case when searching
set smartcase			" Smart > if lower case search ignore case
set smarttab			" Inserting tabs according to shiftwidth
set nopaste
set ambiwidth=single
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set clipboard=unnamed  " Set the copy and paste in the clipboard
set nocp

"""""""""""""""""""""""""""""""""""""""""""""""""""
" File type specific
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Specific command for filetype
filetype plugin indent on
" associate file type with extension
autocmd BufRead,BufNewFile *.less setfiletype css
autocmd BufRead,BufNewFile *.tpl setfiletype html

" When we know the filetype
autocmd FileType haskell,vhdl,ada,lua let b:comment_leader = '-- '
autocmd FileType vim let b:comment_leader = '" '
autocmd FileType c,cpp,java let b:comment_leader = '// '
autocmd FileType sh,python,bash,shell,perl,make let b:comment_leader = '# '
autocmd FileType tex let b:comment_leader = '% '

autocmd FileType python set iskeyword+=.

" To set some file type specific settings, you can now use the following:
autocmd FileType tex set tw=80
autocmd FileType tex set textwidth=80
autocmd FileType tex set wrapmargin


" configure tags - add additional tags here or comment out not-used ones
" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
" map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"Options for snipmate
let g:snippets_dir="~/.vim/snippets"

"Options for bufexplorer
let g:bufExplorerFindActive=1        " Go to active window.
let g:bufExplorerShowDirectories=1   " Show directories.
let g:bufExplorerShowNoName=1        " Show No Name buffers.
let g:bufExplorerShowTabBuffer=1        " Yes.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerReverseSort=0       " Sort in reverse order.
let g:bufExplorerSplitBelow=0        " Split new window above current.


"Options for the NERDTree
let NERDTreeChristmas=1
let NERDTreeChDirMode=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeDirArrows=0
let NERDTreeWinSize=20


" automatically launch these commands
autocmd VimEnter * NERDTree
