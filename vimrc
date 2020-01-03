" ## VUNDLE CONFIGS ##

" Configure backspace behavior
set backspace=indent,eol,start

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.

" " Timothy Pope Vim Suite
" git
Plugin 'tpope/vim-fugitive'
" surround
Plugin 'tpope/vim-surround'
" repeat
Plugin 'tpope/vim-repeat'

" " Syntax Highlighting and Indenting
" javascript indenting
Plugin 'pangloss/vim-javascript'

" Vimtex
Plugin 'lervag/vimtex'

" vim-gfm-syntax
Plugin 'rhysd/vim-gfm-syntax'

" " Make things pretty
" lightline status bar
Plugin 'itchyny/lightline.vim'

" " TOO SLOW - airline status bar
" Plugin 'vim-airline/vim-airline'

"--------------
" Color Schemes
"-------------------------------------------------------------------------------

Plugin 'Lokaltog/vim-distinguished'
Plugin 'altercation/vim-colors-solarized'
Plugin 'reedes/vim-colors-pencil'
Plugin 'vim-scripts/summerfruit256.vim'
Plugin 'NLKNguyen/papercolor-theme'

"-------------------------------- 
" EXAMPLES OF VUNDLE declarations
"-------------------------------------------------------------------------------
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"-----------
" Brief help
"-------------------------------------------------------------------------------
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ## OTHER STANDARD VIM CONFIGS ##

" Character encoding
scriptencoding utf-8
set encoding=utf-8

" Shows text in different colors and calls filetype on
syntax enable

" Color Schemes----------------------------------------------------------------

" Default
" set background=light
colorscheme summerfruit256

" PaperColor
" " Does not have the best support for keywords in Python
function! g:PaperColor()
	set background=light
	colorscheme papercolor
endfunction

" Solarized Dark
function! g:SolarizedDark()
	set background=dark
	let g:solarized_termcolors=256
	colorscheme solarized
endfunction

" Solarized Light
function! g:SolarizedLight()
	set background=light
	let g:solarized_termcolors=256
	colorscheme solarized
endfunction

" Distinguished
function g:Distinguished()
	colorscheme distinguished
endfunction

" Pencil
function g:Pencil()
	let g:pencil_higher_contrast_ui=1
	let g:pencil_neutral_headings=1
	colorscheme pencil
endfunction

" Summerfruit 256
" " A light color scheme that works well with Python
function g:Summerfruit()
	colorscheme summerfruit256
endfunction

" Space leader
let mapleader = "\<Space>"

" Highlight search results
set hlsearch

" Toggle line numbers
nmap <C-N><C-N> :set invnumber<CR>

" jk to 'escape mode'
inoremap jk <ESC>

" Toggle `set list`, a command that shows white spaces.
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Set default tab size to 2 spaces
set tabstop=2
set shiftwidth=2
" " Hitting tab will cause vim to use spaces
set expandtab

" make lightline work
set laststatus=2
set noshowmode
let g:lightline = {
\ 'colorscheme': 'seoul256',
\ 'active': {
\ 	'left': [ [ 'mode', 'paste' ], [ 'fugitive' ], [ 'filename' ] ]
\	},
\ 'component_function': {
\	'fugitive': 'LightlineFugitive'
\	}
\ }

" lightline configuration function for fugitive
function! LightlineFugitive()
	return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

" have jsx highlighting in js files too
let g:jsx_ext_required = 0

" use markdown highlighted fenced code blocks for ruby
let g:markdown_fenced_languages = ['ruby', 'javascript']

" clipboard
