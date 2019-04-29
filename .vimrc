call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'vim-syntastic/syntastic'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'davidhalter/jedi-vim'
    Plug 'Valloric/YouCompleteMe'
    Plug 'ekalinin/dockerfile.vim'
    Plug 'docker/docker'
    Plug 'ervandew/supertab'
    Plug 'mattn/emmet-vim'
	Plug 'xolox/vim-session'
	Plug 'xolox/vim-misc'
	" javascript
	Plug 'pangloss/vim-javascript'
	" html
	Plug 'othree/html5.vim'
    " colors
	Plug 'damage220/solas.vim'
	Plug 'nanotech/jellybeans.vim'
	Plug 'mhartington/oceanic-next'
	Plug 'ErichDonGubler/vim-sublime-monokai'
call plug#end()

filetype off
filetype plugin on
filetype plugin indent on

" settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoread
set autoindent
set smartindent
set rnu
set laststatus=2
set timeoutlen=500
set ttimeoutlen=0
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set encoding=utf-8
set termencoding=utf-8
set updatetime=500
set noswapfile
set splitright
set splitbelow
set nocompatible
set ignorecase
set hidden
set hlsearch
set incsearch
set cursorline
set pumheight=10
set fillchars+=vert:\ 
set foldenable
set foldmethod=syntax

" color
syntax enable
set background=dark
colorscheme sublimemonokai

if has('mouse')
  set mouse=a
endif

" mappings

nnoremap H gT
nnoremap L gt
map <C-p> :NERDTreeToggle<CR>

" Airline opts
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1

" NERDTree opts
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_expandabbr_key = '<C-e>'

" session
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
let g:session_autosave_periodic = 5
let g:session_autosave_silent = 1
let g:session_default_to_last = 1

" syntastic opts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_go_checkers=['govet', 'gofmt', 'gotype', 'go']

let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "gofmt"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1


" youcompleteme
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
