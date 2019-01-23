execute pathogen#infect()
" execute pathogen#helptags()

" use mac pastebin
set clipboard=unnamed

set nocompatible
set term=xterm-256color
set title
set encoding=utf-8
set modeline modelines=5
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smarttab
" Enable mouse support
set mouse=a

set hlsearch

set ruler
set cursorline
syntax on
set number
set background=dark

"let g:zenburn_high_Contrast=1
"let g:zenburn_transparent=1
colors solarized

filetype plugin indent on

"let g:miniBufExplBuffersNeeded = 1

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1
" let g:NERDTreeDirArrows = 0
let g:tagbar_width = 30
let g:tagbar_sort = 0
let g:tagbar_left = 0
let g:tagbar_autoshowtag = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
"let NERDTreeMapOpenInTab='<ENTER>'
" let g:tagbar_usearrows = 1
" autocmd VimEnter * nested NERDTreeOpen
" let g:pymode_folding = 1
" highlight ExtraWhitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" ansible settings
let g:ansible_unindent_after_newline = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_python_checker_args='--ignore=E501,E302,E261,E262,E701,E241,E126,E127,E128,W801'
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
" syntastic_error_symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "S✗"
let g:syntastic_style_warning_symbol = "S⚠"
" custom functions
com! FormatJSON %!python -m json.tool

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" learn tagbar to create tags on certain puppet keywords
let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}

" tmux configuration
"let g:tmuxline_preset = {
"      \'a'    : '#S',
"      \'win'  : ['#I', '#W'],
"      \'cwin' : ['#I', '#W', '#F'],
"      \'y'    : ['#{cpu_icon} #{cpu_percentage}','%R', '%a', '%Y'],
"      \'z'    : '#H'}
