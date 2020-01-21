let mapleader =","

execute pathogen#infect()

syntax on
set hidden
set title
set encoding=utf-8
set number relativenumber
set wildmenu
set wildmode=longest,list,full

set cmdheight=2
set laststatus=2
set termencoding=utf-8
set encoding=utf-8

set hlsearch
set incsearch

map <leader>n :NERDTreeToggle<CR>
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown', '.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
map <leader>v :VimwikiIndex
let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd BufWritePost *zshrc !src %

filetype plugin indent on
aug i3config_ft_detection
	au!
	au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set background=dark
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
hi Normal guibg=NONE ctermbg=NONE
