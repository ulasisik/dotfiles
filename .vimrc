set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.

" Jedi-vim for python
" Plugin 'davidhalter/jedi-vim'

" Vim airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" todo.txt vim
Plugin 'freitass/todo.txt-vim'

" to surround stuff with paranthesis, quotations, vs..
Plugin 'tpope/vim-surround'

" NERDTree
Plugin 'preservim/nerdtree'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'PhilRunninger/nerdtree-visual-selection'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" for copy paste from clipboard
set clipboard=unnamed

" Enable syntax highlighting
syntax on

" make backspace behave normal
set backspace=indent,eol,start

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"set t_Co=256
color wombat256mod
highlight Normal ctermbg=None

" Show line numbers
set number
set colorcolumn=120
highlight ColorColumn ctermbg=233

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Open split panes to riight and bottom
set splitbelow
set splitright

" Turn off vim-markdown
let g:vim_markdown_folding_disabled=1

" Enforce purity
noremap  <Up> <Nop>
noremap  <Down> <Nop>
noremap  <Left> <Nop>
noremap  <Right> <Nop>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
" noremap <C-n> :nohl<CR>
" vnoremap <C-n> :nohl<CR>
" inoremap <C-n> :

" Settings for jedi-vim
" let g:jedi#usages_command = "<leader>z"
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

set completeopt=longest,menuone
function! OmniPopup(action)
	if pumvisible()
		if a:action == 'j'
			return "\<C-N>"
		elseif a:action == 'k'
			return "\<C-P>"
		endif
	endif
	return a:action
endfunction

" For python
set encoding=utf-8


" For todo.txt-vim
let maplocalleader = ","

" For NERDTree
" map leader to ctrl + a
nnoremap <C-a> <C-w>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

 " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

:set foldmethod=manual

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" For powerline
let g:airline_powerline_fonts = 1

" For FZF
set rtp+=/usr/local/opt/fzf
