"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plugins for both Vim and NeoVim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'

Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" VIM-COLORSCHEMES """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme molokai
colorscheme busybee
" colorscheme iceberg
" colorscheme impact
" colorscheme obsidian
" colorscheme sorcerer
" colorscheme twilight256
" colorscheme distinguished

" NERDTREE """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '__pycache__', '\.swp$']
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>
map <F15> :NERDTreeFind<CR>

" close vim if only NERDTree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" DEVICONS """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enabl=1
let g:WebDevIconsNerdTreeAfterGlyphPadding=' '

" NERDCOMMENTER """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims=1

" AIRLINE """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tmuxline#enabled=0
let g:airline_theme="powerlineish"
" let g:airline_theme="hybridline"
" let g:airline_theme="ravenpower"
