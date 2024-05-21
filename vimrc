syntax on
filetype indent plugin on
set number		" Show current line number
set relativenumber	" Show relative line numbers
set ignorecase		" Enable case insensitive search
set smartcase		" If an uppercase letter is included, use case sensitive search

"Still save when shift doesn't let up quickly
:command WQ wq
:command Wq wq
:command W w
:command Q q

"Insert today's date in my preferred format
:command D r! date "+\%Y\%m\%d \%A \%B \%d"

