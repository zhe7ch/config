set nocompatible              " be iMproved, required                           
filetype plugin indent on " required
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()            " required
filetype plugin indent on    " required

"let g:gruvbox_contrast_dark='hard'      "soft/medium/hard
"let g:gruvbox_italic=1

colorscheme nord
"set background=dark     " Setting dark/light mode
"set guifont=FiraMono:h20
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1

highlight Normal ctermbg=None

set number
set laststatus=2        "show status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set wildmenu            " Display command line's tab complete options as a menu
set tabstop=4           " Show existing tab with 4 spaces width
set cursorline
set relativenumber
set linebreak
set mouse+=a
set hlsearch

" Change cursor color
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;navajowhite\x7"
  silent !echo -ne "\033]12;navajowhite\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif

" Change cursor shape
if &term =~ '^xterm\\|rxvt'
  " solid underscore
  let &t_SI .= "\<Esc>[4 q"
  " solid block                                                                 
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif
