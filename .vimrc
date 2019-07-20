set nocompatible				" be iMproved, required

so ~/dotfiles/vim/plugins.vim

syntax enable

set backspace=indent,eol,start			"Make backspace behave like other editor
let mapleader = ','				"The default leader is \, but a comma is much better
set number					"Activate Line numbers

"--------------Visuals---------
" colorscheme atom-dark				"Set theme
set t_CO=256					"Use 256 colors. Useful for terminal vim
set linespace=15				"GVim-specific line-height

"--------------Search---------
set hlsearch
set incsearch

"-------------WordWrap----------
set wrap
set textwidth=100
au BufRead,BufNewFile *.md setlocal textwidth=80 wrap

"--------------Mappings---------

"Make it easy to edit out vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Simple highlight removal
nmap <Leader><space> :nohlsearch<cr>

"Make NerdTree toogle easier
nmap <C-B> :NERDTreeToggle<cr>

nmap <C-T> :CtrlPBufTag<cr>
nmap <C-R> :CtrlPMRUFiles<cr>

"-----------------Plugins----
"--Ctrl p
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'

"--NerdTree
let NERDTreeHiJackNetrw = 0

"-------------Split Management-----
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Editing-----
set softtabstop=2

"-------------Auto-Commands-------

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
