set ts=4
set autoindent
set number
set bg=dark
if has('syntax')
	syntax enable
	colorscheme solarized
endif


" Use set list to see whitespace
set listchars=eol:$,tab:>.,trail:~,extends:>,precedes:<

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Let's find out about custom file types
" See .vim/ftplugin for more info
filetype on
filetype plugin on

" Make a dope/phat statusline that always shows
set statusline=%t\ %m\ %y\ %=\ [%{&ff}]\ [%c,%l]
set laststatus=2
