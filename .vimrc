" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

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

" Pathogen
" execute pathogen#infect()
" filetype plugin indent on
" set background=dark

" Show line numbers.
set number
" Show relative line numbers
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" Do this in normal mode...
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
set rtp+=/usr/bin/fzf

" Line navigation
nmap j gj
nmap k gk
nmap $ g$
nmap 0 g0

" Text Expansion
iabbrev zpb START<cr>Basic<cr>Front:<cr>Back:<cr>Tags: #AnkiTag<cr>END
iabbrev zpc START<cr>Cloze<cr><cr>Tags: #AnkiTag<cr>END


" Vim-one Theme
let g:airline_theme='one'

" Plugins
" Specify a directory for plugins.
call plug#begin('~/.vim/plugged')

" Atom One Dark / Light theme.
Plug 'rakr/vim-one'

" Integrate fzf with Vim.
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Senisble defaults
Plug 'tpope/vim-sensible'

" Surround
Plug 'tpope/vim-surround'

" Better manage Vim sessions.
Plug 'tpope/vim-obsession'

" Zoom in and out of a specific split pane (similar to tmux).
Plug 'dhruvasagar/vim-zoom'

" Pass focus events from tmux to Vim (useful for autoread and linting tools).
"  Plug 'tmux-plugins/vim-tmux-focus-events'

" Navigate and manipulate files in a tree view.
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-mapping-mark-children.vim'

" Helpers for moving and manipulating files / directories.
Plug 'tpope/vim-eunuch'

" Run a diff on 2 directories.
"  Plug 'will133/vim-dirdiff'

" Run a diff on 2 blocks of text.
"  Plug 'AndrewRadev/linediff.vim'

" Add spelling errors to the quickfix list (vim-ingo-library is a dependency).
"  Plug 'inkarkat/vim-ingo-library' | Plug 'inkarkat/vim-SpellCheck'

" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'

" Highlight which character to jump to when using horizontal movement keys.
Plug 'unblevable/quick-scope'
"
" Modify * to also work with visual selections.
"  Plug 'nelstrom/vim-visual-star-search'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" Handle multi-file find and replace.
"  Plug 'mhinz/vim-grepper'

" Better display unwanted whitespace.
Plug 'ntpeters/vim-better-whitespace'

" Toggle comments in various ways.
Plug 'tpope/vim-commentary'

" Automatically set 'shiftwidth' + 'expandtab' (indention) based on file type.
"  Plug 'tpope/vim-sleuth'

" A number of useful motions for the quickfix list, pasting and more.
Plug 'tpope/vim-unimpaired'

" Drastically improve insert mode performance in files with folds.
"  Plug 'Konfekt/FastFold'

" Show git file changes in the gutter.
Plug 'mhinz/vim-signify'

" A git wrapper.
Plug 'tpope/vim-fugitive'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'

" Distraction free writing by removing UI elements and centering
"  everything.
Plug 'junegunn/goyo.vim'

" A bunch of useful language related snippets (ultisnips is the engine).
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Automatically show Vim's complete menu while typing.
Plug 'vim-scripts/AutoComplPop'

" Run test suites for various languages.
"  Plug 'janko/vim-test'

" Colorizer
Plug 'lilydjwg/colorizer'

" Languages and file types.
Plug 'chrisbra/csv.vim'
Plug 'godlygeek/tabular' | Plug 'tpope/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'jvirtanen/vim-hcl'
Plug 'lifepillar/pgsql.vim'
Plug 'othree/html5.vim'
Plug 'stephpy/vim-yaml'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-git'
Plug 'vim-python/python-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'elzr/vim-json'

call plug#end()

