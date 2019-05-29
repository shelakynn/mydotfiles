" general stuff
set dir=~/.vim/swap		" put all swap files here
set bdir=~/.vim/backup	" put all backup files here
set encoding=utf-8		" default file encoding
set termencoding=utf-8	" default terminal encoding
set history=120			" max command history length
set ttyfast				" fast terminal redraw
set autoread			" reload if file change detected
set ffs=unix,dos,mac	" Unix as standard file type

" visual stuff
syntax on				" activate syntax highligh
colorscheme desert		" syntax color scheme
set background=dark		" self-explanatory
set showmatch			" highlight matching brackets
set tabstop=4			" 4 spaces tab
set autoindent			" auto indent, duh?
set nocindent			" switch off C-style indentation

" font according to os
if has("mac") || has("macunix")
    set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

" status and ui
" set number				" display line number
set numberwidth=1		" space reserved for line number
set ruler				" display cursor position
set showmode			" display current mode in status line
set showcmd				" display partial commands in status line
set cursorline			" highligth current line
hi CursorLine term=bold cterm=bold

" searching
set hlsearch			" highlights all search results
set incsearch			" increment search
set ignorecase			" case-insensitive match
set smartcase			" uppercase causes case-sensitive search
set wrapscan			" searches wrap back to the top of file
