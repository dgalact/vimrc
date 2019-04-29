call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'vim-syntastic/syntastic'
    Plug 'Shougo/neocomplete'
    Plug 'altercation/vim-colors-solarized'
    Plug 'sickill/vim-monokai'
    Plug 'ErichDonGubler/vim-sublime-monokai'
    Plug 'StanAngeloff/php.vim'
    Plug 'majutsushi/tagbar'
    Plug 'tpope/vim-surround'
    Plug 'honza/vim-snippets'
    Plug 'davidhalter/jedi-vim'
    Plug 'Valloric/YouCompleteMe'
    Plug 'ekalinin/dockerfile.vim'
    Plug 'docker/docker'
call plug#end()

syntax on 
colorscheme sublimemonokai
set termguicolors
set t_Co=256
let g:sublimemonokai_term_italic = 1
filetype plugin on                                                                                                                                                                                                                                    
filetype indent on

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

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
set completeopt-=preview
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:php_var_selector_is_identifier = 1
