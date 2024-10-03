syntax on
filetype indent plugin on
set number		" Show current line number
"set relativenumber	" Show relative line numbers
set ignorecase		" Enable case insensitive search
set smartcase		" If an uppercase letter is included, use case sensitive search
set re=2		" Fix vim hanging on Typescript files

"Still save when shift doesn't let up quickly
:command WQ wq
:command Wq wq
:command W w
:command Q q

"Insert today's date in my preferred format
:command D r! date "+\%Y\%m\%d \%A \%B \%d"

" Have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Plugins 
" https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'easymotion/vim-easymotion'
call plug#end()
