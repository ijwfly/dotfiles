" Vundle
set nocompatible              " required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ==================
"      PLUGINS
" =================

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Python IDE features
Plugin 'klen/python-mode'

" Python autocomplete
Plugin 'davidhalter/jedi-vim'

" Tags, auto brackets
Plugin 'tpope/vim-surround'

" Code commenter
Plugin 'scrooloose/nerdcommenter'

" Search everywhere with Ctrl+P
Plugin 'kien/ctrlp.vim'

" Code and Filesystem navigation
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'

" Git
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" ======================
"   Настройки плагинов
" ======================
"
"  jedi-vim Settings
let g:jedi#popup_select_first = 1

"  tagbar settings
let g:tagbar_autofocus = 1 " Автофокус
let g:tagbar_sort = 0 " Показ тегов в том же порядке, что и в файле
let g:tagbar_foldlevel = 0 " Автоматическое свертывание

" -----------------------
"  Настройки Python-mode
" -----------------------
let g:pymode_options = 0
let g:pymode_lint_write = 0 " Не проверять код при каждом сохранении

" Подсветка синтаксиса и ошибок
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = 1
let g:pymode_syntax_space_errors = 1

" Поддержка выполнения кода и отладчика
let g:pymode_breakpoint = 1
let g:pymode_run = 1

let g:pymode_folding = 0 " Отключить автофолдинг
let g:pymode_rope_vim_completion = 0 " Не использовать автодополнение rope 

let g:pymode_trim_whitespaces = 1 " Удаление лишних пробелов при сохранении

let g:pymode_options_colorcolumn = 1 " Отображение границы строки по PEP8

let g:pymode_rope = 1
let g:pymode_rope_goto_definition_bind = '<C-c>g' " Goto definition

" =====================
"     Настройки VIM
" =====================

" Подсветка синтаксиса
syntax on

" Кодировка
set encoding=utf-8

" Отступы 
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab

" Номера строк
set nu

" Поиск в процессе набора, регистр игнорируется, подсветка результатов
set incsearch
set ic
set hlsearch

" Системный буфер обмена
set clipboard=unnamed

" Перемещение между разделенными окнами
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" =================================
"            KEY BINDINGS
" =================================
" Leader-I открытие/закрытие NERDTree
map <leader>i :NERDTreeToggle <CR>

" Leader-T - открытие/закрытие TagBar
nnoremap <leader>t :TagbarToggle<CR>

" Leader-R - запуск кода (Python)
let g:pymode_run_key = '<leader>r'

" Leader-B - установка брейкпоинта (Python)
let g:pymode_breakpoint_key = '<leader>b'

" Leader-G - перейти к определению (в новой вкладке)
let g:pymode_rope_goto_definition_bind = '<leader>g'
let g:pymode_rope_goto_definition_cmd = 'tabnew'

" EASYMotion Settings
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

