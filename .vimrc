set nocompatible
filetype off
" odpal mi ten cały Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Shutnik/jshint2.vim'
"Plugin 'skammer/vim-css-color'
Plugin 'ap/vim-css-color'


" kończ te całe Vundle
call vundle#end()
"
" System vimrc file for Mac OS X
" Author:  Benji Fisher <benji@member.AMS.org>
" Last modified:  23 February 2004

" TODO:  Is there any way to test whether Vim.app was started from the Finder? 
if has("gui_running")
  " Get the value of $PATH from a login shell.
  " If your shell is not on this list, it may be just because we have not
  " tested it.  Try adding it to the list and see if it works.  If so,
  " please post a note to the vim-mac list!
  if $SHELL =~ '/\(sh\|csh\|bash\|tcsh\|zsh\)$'
    let s:path = system("echo echo VIMPATH'${PATH}' | $SHELL -l")
    let $PATH = matchstr(s:path, 'VIMPATH\zs.\{-}\ze\n')
  endif
  " Change directory on startup.
  autocmd VimEnter * if getcwd()=="/" | if strlen(@%) | cd %:p:h | else | cd | endif | endif
" If running in a Terminal window, set the terminal type to allow syntax
" highlighting.
"else
"  set term=ansi
endif

syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set ruler

" my own rules
"
" I commented these out because if I use iTerm pressing ⌘++/ will show me where
" the cursor is
"set cursorline
"set cursorcolumn
" other rules I like
set number
set spell
set spelllang=en,pl
"set colorcolumn=81,121
set colorcolumn=81
"execute "set colorcolumn=" . join(range(81,121), ',')
highlight ColorColumn ctermbg=red

"set tw=79       " width of document (used by gd)
set nowrap      " don't automatically wrap on load
set fo-=t       " don't automatically wrap text when typing
set term=screen-256color " potrzebne aby tmux wyświetlał prawidłowo kolory

" chcę mieć 2 linie. Chyba nic innego nie ma? Może dałoby radę ładniejszą linię malować?
"let &colorcolumn='81,' . join(range(121,333), ',')

set laststatus=2

" run JSHint when a file with .js extension is saved
" " this requires the jsHint2 plugin
autocmd BufWritePost *.js silent :JSHint

" I want backspace to work!
" 2  same as ":set backspace=indent,eol,start"
set backspace=2
" Show line breaks
set list
