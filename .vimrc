" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

set clipboard=unnamed

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

" Turn on syntax highlighting.
syntax on

" Show line numbers.
set number

" Create color column
set colorcolumn=80
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Show relative line numbers
set relativenumber

" Always show the status line at the bottom, even if you only one window open.
set laststatus=2

" Better searching
set ignorecase
set smartcase

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

set mouse+=a

" Prevent bad habits
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
nnoremap <Backspace> <ESC>:echoe "Practice not using backspace"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" Color hex codes by default with colorizer
" On macos, this slowed down typing in Vim
" :let g:colorizer_auto_color = 1

" Enable fzf (from Homebrew install)
if has('mac')
        set rtp+=/usr/local/opt/fzf
elseif has('unix')
	set rtp+=/usr/bin/fzf
endif

" Text Expansion
iabbrev zpb START<cr>Basic<cr>Front:<cr>Back:<cr>Tags: #AnkiTag<cr>END
iabbrev zpc START<cr>Cloze<cr><cr>Tags: #AnkiTag<cr>END

" Wrap lines
set wrap linebreak

" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

" Atom One Dark / Light theme.
" Plug 'rakr/vim-one'

" Integrate fzf with Vim.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Senisble defaults
Plug 'tpope/vim-sensible'

" Surround
Plug 'tpope/vim-surround'

" Navigate and manipulate files in a tree view.
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-mapping-mark-children.vim'

" Helpers for moving and manipulating files / directories.
Plug 'tpope/vim-eunuch'

" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'

" Highlight which character to jump to when using horizontal movement keys.
Plug 'unblevable/quick-scope'
"
" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" Better display unwanted whitespace.
Plug 'ntpeters/vim-better-whitespace'

" Toggle comments in various ways.
Plug 'tpope/vim-commentary'

" A number of useful motions for the quickfix list, pasting and more.
Plug 'tpope/vim-unimpaired'

" Show git file changes in the gutter.
Plug 'mhinz/vim-signify'

" A git wrapper.
Plug 'tpope/vim-fugitive'

" Distraction free writing by removing UI elements and centering
"  everything.
Plug 'junegunn/goyo.vim'

" Colorizer
Plug 'lilydjwg/colorizer'

" Terminus (better cursor)
Plug 'wincent/terminus'

" Terminux
Plug 'wincent/terminus'

" Nvim-R
Plug 'jalvesaq/Nvim-R'

" COC - Intellisense Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Languages and file types.
Plug 'chrisbra/csv.vim'
Plug 'jvirtanen/vim-hcl'
Plug 'lifepillar/pgsql.vim'
Plug 'othree/html5.vim'
Plug 'stephpy/vim-yaml'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-git'
Plug 'vim-python/python-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elzr/vim-json'

" Zettel-style plugins
Plug 'michal-h21/vim-zettel'

" RMarkdown Support
Plug 'vim-pandoc/vim-rmarkdown'
call plug#end()
