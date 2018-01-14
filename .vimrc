set nocompatible " be iMproved, required                                                                                                                                                                        
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
        "Plugin 'VundleVim/Vundle.vim'
        Plugin 'scrooloose/nerdtree'
        Plugin 'SirVer/ultisnips'
        Plugin 'honza/vim-snippets'
        Plugin 'rhysd/vim-clang-format'
        Plugin 'clang-complete'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
        " colors
        Plugin 'damage220/solas.vim'
        Plugin 'nanotech/jellybeans.vim'
call vundle#end() " required
filetype plugin indent on " required

syntax on
"set number
set background=dark
colorscheme jellybeans
set cursorline
set splitright
set splitbelow
set noshowmode
set encoding=utf-8
set laststatus=2

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}
let g:clang_format#auto_format =1
" airline
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_warning = ''
let g:airline_section_error = ''
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_enable_bufferline=1

