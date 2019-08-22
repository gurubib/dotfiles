"No compatible mode and filetype set correctly for vundle
"Also the needed parts for init vundle
"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"YCM plugin
"Plugin 'valloric/youcompleteme'

" Now we can turn our filetype functionality back on
filetype plugin indent on

"Added functionalities

"Comfortable-motion plugin
"Plugin 'yuttie/comfortable-motion.vim'

"Ruler
set ruler

"Syntax highlighting
syntax on

"Better command-line completion
set wildmenu

"Show partial commands in the last line of the screen
set showcmd

"Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

"Autoindent
set autoindent

"Always display the status line, even if only one window is displayed
set laststatus=2

"Instead of failing a command because of unsaved changes, raise dialog
set confirm

"Use a visual bell instead of beeping when doing something wrong
set visualbell
set t_vb=

"Command window height to 2 lines
set cmdheight=2

"Color scheme
colo molokai
"colo hydrangea

"Setting hybrid line numbers when in normal mode and the window has focus
"when it loses the focus or exits normal mode, absolute line numbers are turned on
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

"Disable YCM preview
set completeopt-=preview

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'yuttie/comfortable-motion.vim'
Plug 'yuttie/hydrangea-vim'

" Initialize plugin system
call plug#end()

" Different cursor in different modes (blinking)
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
