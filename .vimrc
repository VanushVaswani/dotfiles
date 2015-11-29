colorscheme desert
execute pathogen#infect()
"Disable arrow keys"
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
let g:netrw_liststyle=3

"Persistent undo
set undofile
set undodir=/home/vanush/.vimundo/

syntax enable       "syntax highlighting

set number          "show line numbers

"highlight brackets
set matchtime=1
highlight MatchParen cterm=none ctermbg=none ctermfg=cyan

""llvm ir
augroup filetype
  au! BufRead, BufNewFile *.ll	set filetype=llvm
augroup END

"auto-indenting
filetype indent on

"tab settings for most files (BCM Cstyle)
"tab length is 8, tabs are not spaces
autocmd FileType * set tabstop=8|set shiftwidth=8|set noexpandtab

"tab settings for Python
"tab length is 4, tabs are spaces, backspace kills 4-space-tabs
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

"make normal mode cursor go to start (not end) of initial tab:
set list lcs=tab:\ \ 

"make backspacing work over indents, end of line, start of edited text:
set backspace=indent,eol,start

"change cursor between insert mode and normal mode:
"if has("autocmd")
"  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"  au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"endif

"tab autocompletion for commands
set wildmode=longest,list,full
set wildmenu

"display title with file name
set title

"f2 toggles paste mode
set pastetoggle=<F2>

"f3 toggles search highlighting
set hlsearch
noremap <F3> :set hlsearch!<CR>

"f4 toggles line numbers
noremap <F4> :set number!<CR>

"highlight trailing whitespace
match ErrorMsg '\s\+$'
"Disable bells
set visualbell
set t_vb=

autocmd FileType ocaml source /home/vanush/.opam/system/share/vim/syntax/ocp-indent.vim
if &diff
	colorscheme evening
endif
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore =  '\v[\/]\.(git|hg|svn)$'
set mouse=a
