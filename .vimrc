call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'vim-syntastic/syntastic'
    Plug 'ErichDonGubler/vim-sublime-monokai'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'davidhalter/jedi-vim'
    Plug 'Valloric/YouCompleteMe'
    Plug 'ekalinin/dockerfile.vim'
    Plug 'docker/docker'
    Plug 'ervandew/supertab'
call plug#end()

syntax on 
colorscheme sublimemonokai
set termguicolors
set t_Co=256
let g:sublimemonokai_term_italic = 1
filetype plugin on                                                                                                                                                                                                                                    
filetype plugin indent on

"set nu
set autoread 
set ignorecase
set hlsearch
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartcase
set autoindent
set smartindent
set wrap
set encoding=utf-8
set noswapfile                                                                                                                                                                                                           
set nobackup
set magic
set foldenable
set foldmethod=syntax

if has('mouse')
  set mouse=a
endif

" Airline opts
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTree opts
"autocmd VimEnter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeDirArrows=1
let NERDTreeChDirMode = 2
let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1

" syntastic opts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "gofmt"
let g:syntastic_go_checkers=['govet', 'gofmt', 'gotype', 'go']
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


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<c-]>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
