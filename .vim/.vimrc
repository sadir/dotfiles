set background=dark
set backupdir=/var/tmp,~/.tmp,.
set colorcolumn=+1
set directory=/var/tmp,~/.tmp,.
set expandtab
set hidden
set mouse=a
set number
set nocompatible
set nowrap
set shiftwidth=2
set showbreak="+++"
set showcmd
set showmatch
set showmode
set signcolumn=yes
set synmaxcol=200
set tabstop=2
set textwidth=80
set t_Co=256
set writebackup

call plug#begin('~/.dotfiles/.vim/plugged')
source ~/.dotfiles/.vim/plugins.vim
call plug#end()

if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

colorscheme molokai

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let mapleader = ","

let g:NERDSpaceDelims = 1

map <silent> <Leader><Leader> :b#<CR>
nmap <silent> <unique> <Leader>. :BufExplorer<CR>
nmap <silent> <Leader>m :NERDTreeToggle<CR>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
map <leader>rt :!ctags -R .<CR><CR>


" ----------------------------------------------
" Setup NERDTree
" ----------------------------------------------
" Make NERDTree close when you open a file from it. Helps recover screen space!
let NERDTreeQuitOnOpen=1

" Disable netrw's autocmd, since we're ALWAYS using NERDTree
runtime plugin/netRwPlugin.vim
augroup FileExplorer
  au!
augroup END

let g:NERDTreeHijackNetrw = 0

" ----------------------------------------------
" Setup CtrlP File Finder
" ----------------------------------------------

let g:ctrlp_show_hidden = 1

" Use Ag for search if its available on this system
if executable('rg')
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
  let g:ctrlp_user_command = 'rg %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE

let g:rg_binary = 'rg'
let g:rg_command = g:rg_binary . ' --vimgrep --smart-case'
