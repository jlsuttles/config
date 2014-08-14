" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

set clipboard=unnamed
set cursorline
set cursorcolumn
set colorcolumn=80

" colors
syntax enable "also at end of file
set background=light
colorscheme solarized
" let g:solarized_termcolors=256

let g:ruby_operators = 1 " highlight ruby operators like || and &&

set completefunc=syntaxcomplete#Complete
set autoindent " copy indent from current line for new line
set autoread
set backspace=indent,eol,start " make backspace always work
set directory=/var/tmp//
set expandtab " use soft tab for tab key
set gdefault
set guifont=Inconsolata-dz:h14
set hls
set includeexpr+=substitute(v:fname,'s$','','g')
set incsearch " turn on incremental search
set nocompatible " errybody does it
set nowrap
set number
set ruler " turn on line at the bottom right of the window
set rulerformat=%c\ %l\/%L " column current_line/total_lines
set showtabline=2
set sm " show matching braces
set suffixesadd=.css
set suffixesadd=.js
set suffixesadd=.rb
set sw=2 " soft tab width in spaces
set tabstop=2
set tildeop
set viminfo^=! " make project list persist across restarts
set visualbell t_vb= " turn off visualbell
set wildmenu
set wildmode=longest,list,full

"
" http://items.sjbach.com/319/configuring-vim-right
"

" allow Vim to manage multiple buffers effectively
set hidden
" These two options, when set together, will make /-style searches case-sensitive only if there is a capital letter in the search expression. *-style searches continue to be consistently case-sensitive.
set ignorecase
set smartcase
" When the cursor is moved outside the viewport of the current window, the buffer is scrolled by a single line. Setting the option below will start the scrolling three lines before the border, keeping more context around where you’re working.
set scrolloff=6

" These are very similar keys. Typing 'a will jump to the line in the current file marked with ma. However, `a will jump to the line and column marked with ma.
nnoremap ' `
nnoremap ` '

" The % key will switch between opening and closing brackets. By sourcing matchit.vim, it can also switch among e.g. if/elsif/else/end, between opening and closing XML tags, and more.
runtime macros/matchit.vim

"
" end http://items.sjbach.com/319/configuring-vim-right
"

 " Tabs (from Brendan)
map <C-l> :tabnext<CR>
map <C-h> :tabprevious<CR>
map <C-n> :tabnew<CR>

" Cycle between windows with tab (from Brendan)
map <Tab> <C-W>w

" navigate between splits
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" toggle fullscreen
map <D-F> :set invfu
" ^C to escape
map  
" // to no highlight
map // :nohl
" revert to default font
map <D-0> :set guifont=Inconsolata-dz:h14
" shift + left arrow outdents
map <S-Left> I<BS><BS>
" shift + right arrow indents
map <S-Right> I  
" strip white space
map <C-D-Space> :%s/\s*$////

"<apple-]>: Previous Tab
:nmap <D-[> :tabprevious<cr>
:map <D-[> :tabprevious<cr>
:imap <D-[> <ESC>:tabprevious<cr>i<Right>
"<apple-]>: Next Tab
:nmap <D-]> :tabnext<cr>
:map <D-]> :tabnext<cr>
:imap <D-]> <ESC>:tabnext<cr>i<Right>
"<apple-t> : New Tab
:nmap <D-t> :tabnew<cr>
:imap <D-t> <ESC>:tabnew<cr>
"<command-number> for tabs normal mode
map <D-1> :tabn 1
map <D-2> :tabn 2
map <D-3> :tabn 3
map <D-4> :tabn 4
map <D-5> :tabn 5
map <D-6> :tabn 6
map <D-7> :tabn 7
map <D-8> :tabn 8
map <D-9> :tabl
"<command-number> for tabs in insert mode
imap <D-1> :tabn 1i<Right>
imap <D-2> :tabn 2i<Right>
imap <D-3> :tabn 3i<Right>
imap <D-4> :tabn 4i<Right>
imap <D-5> :tabn 5i<Right>
imap <D-6> :tabn 6i<Right>
imap <D-7> :tabn 7i<Right>
imap <D-8> :tabn 8i<Right>
imap <D-9> :tabli<Right>

" %% expands to <%=%>
imap %% <%=%><Left><Left>

" indentation after a comment
inoremap # X#

"turn on autocommands
autocmd!
autocmd BufWritePre * :%s/\s\+$//e

filetype plugin on

" needs to be at end of file
syntax on
