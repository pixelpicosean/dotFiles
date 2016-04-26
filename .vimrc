call plug#begin('~/.vim/plugged')

" Sidebar
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" YCM
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

call plug#end()
