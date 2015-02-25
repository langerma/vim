execute pathogen#infect()
" execute pathogen#helptags()

set nocompatible
set term=xterm-256color
set title
set encoding=utf-8
set modeline modelines=5
set ts=4
set sw=4
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

colorscheme solarized
filetype plugin indent on

"let g:miniBufExplBuffersNeeded = 1

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1
" let g:NERDTreeDirArrows = 0
let g:tagbar_width = 30
let g:tagbar_sort = 0
let g:tagbar_left = 1
let g:tagbar_autoshowtag = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let NERDTreeMapOpenInTab='<ENTER>'
" let g:tagbar_usearrows = 1
" autocmd VimEnter * nested NERDTreeOpen

" highlight ExtraWhitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:tagbar_type_puppet = {
    \ 'ctagstype': 'puppet',
    \ 'kinds': [
        \'c:class',
        \'s:site',
        \'n:node',
        \'d:definition'
      \]
    \}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}
