set ts=2
set shiftwidth=2
set expandtab
set autoindent
set number
set bg=dark
set spell
if has('syntax')
	syntax enable
	colorscheme solarized

  " Switch to 'background' color for background instead of 'bright' because
  " they are the same color
  highlight Normal ctermbg=0

	" Highlight trailing whitespace
	highlight ExtraWhitespace ctermbg=red guibg=red
	match ExtraWhitespace /\s\+$/
	autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
	autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
	autocmd InsertLeave * match ExtraWhitespace /\s\+$/
	if version >= 702
		autocmd BufWinLeave * call clearmatches()
	endif

	" Let's find out about custom file types
	" See .vim/ftplugin for more info
	filetype on
	filetype plugin on

endif

call plug#begin('~/.vim/plugged')
  Plug 'elmcast/elm-vim'
call plug#end()

" Use set list to see whitespace
set listchars=eol:$,tab:>.,trail:~,extends:>,precedes:<

" Make a dope/phat statusline that always shows
set statusline=%t\ %m\ %y\ %=\ [%{getcwd()}]\ [%{&ff}]\ [%c,%l]
set laststatus=2

execute pathogen#infect()
