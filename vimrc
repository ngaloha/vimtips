" Set Line numbers
set nu

" Set Syntax highlitening
syntax on
set syntax=whitespace

" Set backspace symbol. override default Ansi Ctrl-H
set backspace=indent,eol,start

" Set vim intends
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set cindent

" Highlite search string
set hlsearch

" Disable Arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable compatible mode. Dont know what it stands for
set nocompatible

" Set the backgroup to dark
set background=dark

" Set folding ot syntax wide
"set foldmethod=syntax

" Set the unprintable charecters to be wisible
set list
set listchars+=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·

" Vandle plugin manager settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'valloric/youcompleteme'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/bash-support.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'vim-syntastic/syntastic'
Plugin 'juliosueiras/vim-terraform-completion'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            

" Dont know that is this 
filetype plugin indent on    

" The vim color style 
colorscheme gruvbox

" Space to fold or unfold current path
"nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
" Fold all
"vnoremap <Space> zf
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
" SHow nerd tree. The catalod tree
map <C-n> :NERDTreeToggle<CR>

" auto closure brackets plugin
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" Terrafiorm
" Autocmd
autocmd BufEnter *.tf* 
autocmd FileType terraform setlocal commentstring=#%s

" Run Terrafomr fmt when saving the doc
let g:terraform_fmt_on_save=1
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1

