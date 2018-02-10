"# Vim options
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
set t_Co=256
set writebackup

"# Plugins
call plug#begin('~/.vim/plugged')
source ~/.vim/plugins.vim
call plug#end()

if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"# Visual
colorscheme molokai

"# Plugin setup and variables
let mapleader = ","

"## Search
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"## NERD tree
let g:NERDSpaceDelims = 1
let NERDTreeQuitOnOpen=1
" Disable netrw's autocmd, since we're ALWAYS using NERDTree
runtime plugin/netRwPlugin.vim
augroup FileExplorer
  au!
augroup END
let g:NERDTreeHijackNetrw = 0

"## CtrlP File Finder
let g:ctrlp_show_hidden = 1
if executable('rg')
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
  let g:ctrlp_user_command = 'rg --files -g "" %s'
  let g:ctrlp_use_caching = 0
endif
highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE

"## Fuzzy Search
let g:rg_binary = 'rg'
let g:rg_command = g:rg_binary . ' --vimgrep --smart-case'

"## Linting and Formatting
let g:ale_fixers = {
      \ 'elixir' : ['mix_format'],
      \ 'go' : ['gofmt'],
      \ 'javascript': ['prettier-eslint', 'eslint', 'standard'],
      \ 'json': ['jq'],
      \ 'ruby': ['rubocop', 'remove_trailing_lines', 'trim_whitespace'],
      \ 'rust': ['rustfmt'],
      \ 'terraform': ['tflint'],
      \ 'typescript': ['tslint'],
      \}
let g:ale_fix_on_save = 1

"# Mappings
map <silent> <Leader><Leader> :b#<CR>
nmap <silent> <unique> <Leader>. :BufExplorer<CR>
nmap <silent> <Leader>m :NERDTreeToggle<CR>

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
map <leader>rt :!ctags -R .<CR><CR>
