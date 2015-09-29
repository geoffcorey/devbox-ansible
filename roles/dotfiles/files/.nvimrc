"""""""""""""""
" General
"""""""""""""""
filetype off                  " required
" set the runtime path to include Vundle and initialize
"set rtp+=~/.nvim/bundle/Vundle.vim
call plug#begin('~/.nvim/plugged')
" Define bundles via Github repos
" 
" Standard
Plug 'gmarik/vundle'
Plug 'atelierbram/vim-colors_atelier-schemes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'godlygeek/tabular'
Plug 'nicholaides/words-to-avoid.vim'
Plug 'majutsushi/tagbar'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'
Plug 'szw/vim-tags'
Plug 'vim-scripts/greplace.vim'
Plug 'tomtom/tcomment_vim'
Plug 'bling/vim-airline'
"Plugin 'croaky/vim-colors-github'
"Plugin 'danro/rename.vim'
" 
" Golang
" 
Plug 'fatih/vim-go'
"Plug 'Valloric/YouCompleteMe'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
" 
" Javascript / Node.js
" 
Plug 'maksimr/vim-jsbeautify'
Plug 'moll/vim-node'
Plug 'digitaltoad/vim-jade'
"Plug 'elzr/vim-json'
" 
" Markdown
" 
"Plug 'plasticboy/vim-markdown'
"Plug 'tpope/vim-markdown'
" 
" Ruby/Rails/Cucumber
" 
Plug 'skalnik/vim-vroom'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
call plug#end()
filetype plugin indent on

"""""""""""""""
" Events 
"""""""""""""""

" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab
" In Ruby files, use 2 spaces instead of 4 for tabs
autocmd FileType ruby setlocal sw=2 ts=2 sts=2
" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
set ofu=syntaxcomplete#Complete

" Always edit file, even when swap file is found
set shortmess+=A

" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif |

"""""""""""""""
" 03 Theme Colors 
"""""""""""""""
syntax enable             " enable syntax highlighting (previously syntax on).
" Color scheme
set background=dark
"colorscheme Tomorrow-Night-Bright
"colorscheme base16-atelierheath
"colorscheme base16-atelierdune
"xset t_Co=256              " enable 256-color mode.
set t_Co=256
colo CandyPaper
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
" Prettify JSON files
"autocmd BufRead,BufNewFile *.json set filetype=json
"autocmd Syntax json sou ~/.vim/syntax/json.vim

" Prettify Vagrantfile
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Prettify Markdown files
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Highlight characters that go over 80 columns (by drawing a border on the 81st)
"if exists('+colorcolumn')
"  set colorcolumn=81
"  highlight ColorColumn ctermbg=red
"else
"  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"  match OverLength /\%81v.\+/
"endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. VIM UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocul                   " highlight current line
set number                " show line numbers
set numberwidth=6         " make the number gutter 6 characters wide
set laststatus=2          " last window always has a statusline
set ruler                 " Always show info along bottom.
set showcmd               " display incomplete commands
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
set visualbell
set noerrorbells                " Disable error bells
set pastetoggle=<F12> " Toggle paste mode while in insert mode with F12

" Misc
filetype plugin indent on       " Do filetype detection and load custom file plugins and indent files
set wildmenu                    " Enhanced completion hints in command line
set complete=.,w,b,u,U,t,i,d    " Do lots of scanning on tab completion
set updatecount=100             " Write swap file to disk every 100 chars
"set directory=~/.nvim/swap       " Directory to use for the swap file
set diffopt=filler,iwhite       " In diff mode, ignore whitespace changes and align unchanged lines
set scrolloff=3                 " Start scrolling 3 lines before the horizontal window border
" up/down on displayed lines, not real lines. More useful than painful.
noremap k gk
noremap j gj
" Undo

set undolevels=10000
if has("persistent_undo")
  set undodir=~/.nvim/undo       " Allow undoes to persist even after a file is closed
  set undofile
endif
nnoremap <C-u> :GundoToggle<CR>

" Search settings
set hlsearch              " Continue to highlight searched phrases.
"set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set showmatch
set smartcase

" Keybindings to native vim features
let mapleader=","
let localmapleader=","
map <Leader>ss :setlocal spell!<cr>
map <Leader>/ :nohlsearch<cr>
map <M-[> :tprev<CR>
map <M-]> :tnext<CR>
vnoremap . :normal .<CR>
vnoremap @ :normal! @
map <M-j> :bn<cr>
map <M-k> :bp<cr>
map <C-PageDown> :cnext<cr>
map <C-PageUp> :cprev<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent            " auto-indent
set backspace=eol,start,indent  " Allow backspacing over indent, eol, & start
"set expandtab             " use spaces instead of tabs
set list!                       " Display unprintable characters
set listchars=tab:▸\ ,trail:•,extends:»,precedes:«
set nowrap                " don't wrap text
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set shiftround            " always indent/outdent to the nearest tabstop
set smartindent           " automatically insert one extra level of indentation
set smarttab              " use tabs at the start of a line, spaces elsewhere
set splitbelow            " Open new split panes to right and bottom, 
set splitright            " which feels more natural
set tabstop=2             " tab spacing
" to_html settings
let html_number_lines = 1
"let html_ignore_folding = 1
let html_use_css = 1
"let html_no_pre = 0
"let use_xhtml = 1
let xml_use_xhtml = 1
let g:html_indent_tags = 'li\|p' " Treat <li> and <p> tags like the block tags they are
let g:vim_markdown_folding_disabled=1
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>
" Prettify JSON files making them easier to read
command PrettyJSON %!python -m json.tool
let g:vim_json_syntax_conceal=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"noremap <C-f> :%!js-beautify -s 2 -j -q -B -f -<CR>
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets are activated by Shift+Tab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:snippetsEmu_key = "<S-Tab>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
set complete=.,w,t
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
" let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Index ctags from any project, including those outside Rails
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <Leader>ct :!ctags -R .<CR>
" Vim Tags
let g:vim_tags_autogenerate = 1
let g:vim_tags_use_dispatch = 1
let g:vim_tags_directories = [".git", ".hg", ".svn", ".bzr", "_darcs", "CVS"]
" Switch between the last two files
nnoremap <leader><leader> <c-^>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configure syntastic syntax checking to check on open as well as save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['c', 'scss'] }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-g> :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
                     \ && b:NERDTreeType == "primary") | q | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
                     \ && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$' ]
let NERDTreeHighlightCursorline=1
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

"""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""
let g:Powerline_symbols = 'unicode'
set laststatus=2

let g:ctrlp_map = '<c-e>'
let g:ctrlp_custom_ignore = '/\.\|\.o\|\.so'
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_open_multiple_files = 'h'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabularize
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Leader>t= :Tabularize /=<CR>
noremap <Leader>t: :Tabularize /^[^:]*:\zs/l0l1<CR>
noremap <Leader>t> :Tabularize /=><CR>
noremap <Leader>t, :Tabularize /,\zs/l0l1<CR>
noremap <Leader>t{ :Tabularize /{<CR>
noremap <Leader>t\| :Tabularize /\|<CR>
""""""""""""""""""""""""
" Tmuxify
""""""""""""""""""""""""
let g:tmuxify_pane_split = '-v'
let g:tmuxify_pane_size = '10'
let g:tmuxify_run = {
   \ 'go': 'go build %',
   \}
"""""""""""""""""""""""""
" Custom functions
"""""""""""""""""""""""""
:command -bar -nargs=1 OpenURL :!firefox <args>

"nmap fc :call CleanClose(1)<cr>
"nmap fq :call CleanClose(0)<cr>

function! CleanClose(tosave)
  if (a:tosave == 1)
      w!
  endif
  let todelbufNr = bufnr("%")
  let newbufNr = bufnr("#")
  if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
      exe "b".newbufNr
  else
      bnext
  endif
  if (bufnr("%") == todelbufNr)
      new
  endif
  exe "bd!".todelbufNr
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-tmux-navigator
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-k> :TmuxNavigateDown<cr>
nnoremap <silent> <C-j> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set cscopetag " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'

  " check cscope for definition of a symbol before checking ctags: set to 1
  " if you want the reverse search order.
  set csto=0

  " add any cscope database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  endif

  " show msg when any other cscope db added
  set cscopeverbose
end
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Local config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable($HOME . "/.nvimrc.local")
  source ~/.nvimrc.local
endif
