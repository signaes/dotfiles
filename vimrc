call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'

Plug 'junegunn/limelight.vim'

Plug 'junegunn/seoul256.vim'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-bundler'
Plug 'thoughtbot/vim-rspec'

" Add plugins to &runtimepath
call plug#end()

let mapleader      = ' '
let maplocalleader = ' '

set backspace=indent,eol,start
set autoindent
set smartindent
set encoding=utf-8
set hlsearch        " highlight search matches
set incsearch       " search while characters are entered
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set ai              " Auto indent
set si              " Smart indent
set showmatch       " show matching braces
filetype indent on  " enable filetype specific indentation

" Enable syntax highlighting
syntax on

" Keep the cursor on the same column
set nostartofline

" Splits
nnoremap <Leader><Bar> :vsplit<cr>
nnoremap <Leader>_ :split<cr>

" Splits navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Numbers
set number
set relativenumber

" Toogle numbers
nnoremap <C-n> :set invnumber<cr>
nnoremap <C-r> :set invrelativenumber<cr>

function! NoNumbers()
  set nonumber
  set norelativenumber
endfunc

function! ToggleNumbers()
  set invnumber
  set invrelativenumber
endfunc

nnoremap <S-n> :call NoNumbers()<cr>
nnoremap <S-Left> :call ToggleNumbers()<cr>
nnoremap <S-Right> :call ToggleNumbers()<cr>
"

" Tabs
nnoremap <C-t> :tabnew<cr>
nnoremap <Tab>   :tabnext<cr>
nnoremap <S-Tab> :tabprevious<cr>

" Write
nnoremap <Leader>w :w<cr>

" Save
nnoremap <C-u> :update<cr>

" Automatically update a file if it is changed externally
set autoread

" Toggle the highlighting for the current search
nnoremap <Leader>h :set hlsearch! hlsearch?<cr>

" Quit
nnoremap <Leader>q :q<cr>

" 고요
nnoremap <Leader>g :Goyo<cr>

"

" Limelight
nmap <Leader>l <Plug>(Limelight)
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
" 고요 integration
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
"

" NERDTree
nnoremap \ :NERDTreeToggle<cr>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
