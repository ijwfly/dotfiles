" Vundle settings
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" python autocomplete
Plugin 'davidhalter/jedi-vim'

" search everywhere with Ctrl+P
Plugin 'kien/ctrlp.vim'

" filesystem
Plugin 'scrooloose/nerdtree'
map <C-I> :NERDTreeToggle <CR>

" tabs
Plugin 'jistr/vim-nerdtree-tabs'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Basic settings for Python
set tabstop=4
set shiftwidth=4
set expandtab

" Basic settings for pretty much everything
set nu
set clipboard=unnamed

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
