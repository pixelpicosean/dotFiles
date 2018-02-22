syntax on

" Plugins """""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" General Tools
" - Sidebar
Plug 'scrooloose/nerdtree'
" - Fuzzy
Plug 'ctrlpvim/ctrlp.vim'
" - Easy motion
Plug 'easymotion/vim-easymotion'
" - Airline (status)
Plug 'vim-airline/vim-airline'

" Better writing/authoring experience(markdown...)
Plug 'reedes/vim-pencil'
Plug 'junegunn/limelight.vim' " block highlight
Plug 'tpope/vim-markdown'
Plug 'mattly/vim-markdown-enhancements'
Plug 'reedes/vim-lexical'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-textobj-sentence'
Plug 'reedes/vim-wordy'

" Development Tools
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'scrooloose/syntastic'
Plug 'ajh17/VimCompletesMe'
Plug 'tpope/vim-fugitive'

call plug#end()

" Settings """"""""""""""""""""""""""""""""""""""""""""""""

" Set some junk
set autoindent " Copy indent from last line when starting new line.
set cursorline " Highlight current line
set magic " Enable extended regexes.
"set mouse=a " Enable moouse in all in all modes.
set noerrorbells " Disable error bells.
set ruler " Show the cursor position
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set softtabstop=2 " Tab key results in 2 spaces
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set title " Show the filename in the window titlebar.
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.
set nu " Enable line number display

set wrapscan " Searches wrap around end of file

" Indent Guides {{{
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
" }}}

" Better buffer switching {{{

let os = substitute(system('uname'), "\n", "", "")
if os == "Darwin"
    set macmeta
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l

    map <D-M-Left> <C-PageUp>
    map <D-M-Right> <C-PageDown>
else
    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l

    map <C-M-h> <C-PageUp>
    map <C-M-l> <C-PageDown>
    map <C-M-Left> <C-PageUp>
    map <C-M-Right> <C-PageDown>
endif
" }}}

" Toggle show tabs and trailing spaces (,c) {{{
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>
" }}}

" Strip trailing whitespace (,ss) {{{
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>
" }}}

" ZSH {{{
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc set ft=zsh
" }}}

" CtrlP {{{
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_split_window = 1 " <CR> = New Tab
" }}}

" NerdTree {{{
map <C-k><C-b> :NERDTreeToggle<CR>
" }}}

" Airline {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}

" Pencil / Writing Controls {{{
let g:pencil#wrapModeDefault = 'soft'
let g:pencil#textwidth = 64
let g:pencil#joinspaces = 0
let g:pencil#cursorwrap = 1
let g:pencil#conceallevel = 3
let g:pencil#concealcursor = 'c'
let g:pencil#softDetectSample = 20
let g:pencil#softDetectThreshold = 130
" }}}

" GUI {{{
if has('gui_running')
    set encoding=utf-8
    syntax enable
    set guifont=Sauce\ Code\ Powerline:h14
    " Sauce Code Powerline
    " Meslo LG M DZ Regular for Powerline
else
    set t_Co=256
    syntax enable
endif
" }}}
