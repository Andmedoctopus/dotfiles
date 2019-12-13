"Plugins will be downloaded under the specified directory.
call plug#begin('~/.local/share/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'mattn/emmet-vim'
" setting for python development
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake' 
Plug 'tmhedberg/SimpylFold'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" set numbering of lines
set number
set nowrap

" theme
colorscheme gruvbox
set background=dark
" theme for status bar
let g:airline_theme='tomorrow'

" netrw configuration
"" Per default, netrw leaves unmodified buffers open. This autocommand
"" deletes netrw's buffer once it's hidden (using ':q', for example)
"autocmd FileType netrw setl bufhidden=delete

"let g:netrw_liststyle = 3
"let g:netrw_banner = 0
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 15
"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END

"open the nerdtree window when opening up Nvim
autocmd VimEnter * NERDTree | wincmd p

" moving between nvim and netwr
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Python dev
let g:deoplete#enable_at_startup = 1
" close preview window on leaving the insert mode
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"preview windows will open below
set splitbelow
"navigate through the auto-completion list with Tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right""
"linter(code checker) for python
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)
