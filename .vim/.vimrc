"# Vim options
set background=dark
set backupdir=/var/tmp,~/.tmp,.
set colorcolumn=80
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

"## Build in :grep command
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

"## CtrlP File Finder
let g:ctrlp_show_hidden = 1
if executable('rg')
  let g:ctrlp_user_command = 'rg --files -g "" %s'
  let g:ctrlp_use_caching = 1
endif
highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE

"## Fuzzy Search
let g:rg_binary = 'rg'
let g:rg_command = g:rg_binary . ' --vimgrep --smart-case'

"## Async linting
call neomake#configure#automake('w')
let g:neomake_serialize = 1
let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['peslint', 'jshint']
let g:neomake_javascript_peslint_maker = {
        \ 'exe': 'prettier-eslint',
        \ 'args': ['--write', '--single-quote', '--eslint-config-path',  '.eslintrc.js'],
        \ }
let g:neomake_typescript_enabled_makers = ['peslint', 'tsc']
let g:neomake_typescript_peslint_maker = {
        \ 'exe': 'prettier-eslint',
        \ 'args': ['--write', '--single-quote', '--eslint-config-path',  '.eslintrc.js'],
        \ }
let g:neomake_elixir_enabled_makers = ['mixf', 'mix']
let g:neomake_elixir_mix_maker = {
        \ 'exe': 'mix',
        \ 'args': ['compile'],
        \ 'errorformat':
          \ '** %s %f:%l: %m,'.
          \ '%Ewarning: %m,%C  %f:%l,%Z'
        \ }
let g:neomake_elixir_mixf_maker = {
        \ 'exe': 'mix',
        \ 'args': ['format'],
        \ }

"## Autoload files when they change
set autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
augroup my_neomake_hooks
  au!
  autocmd User NeomakeJobFinished :checktime
augroup END

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
