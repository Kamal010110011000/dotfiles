syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
"""set undodir=~/.vim/undodir
"""set undofile
set incsearch
set splitbelow splitright

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"set statusline=%f       ""Path to file
"set statusline+=%=      ""Switch to right side
"set statusline+=%l      ""current line
"set statusline+=/       ""saperator
"set statusline+=%L      ""Total lines
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
"""My Functions""
function Runcmd()
  echo "hello"
endfunction

let mapleader = " "
let maplocalleader = ";"

nnoremap <leader>hl Runcmd()<CR>

""My Functions"""

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
""


""Escape key mapping 
inoremap jk <Esc>
nnoremap <C-L> <Esc>
vnoremap <C-L> <Esc>
onoremap <C-L> <Esc>
cnoremap <C-L> <Esc>

"" split screen buffer navigation mapping
nnoremap <leader>h :wincmd h<CR>
noremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

""other mappings
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>pa :Rg<SPACE>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <silent> <leader>[ :bprev<CR>
nnoremap <silent> <leader>] :bnext<CR>
nnoremap <silent> <leader>b :buffers<CR>
tnoremap <leader><leader> <c-\><c-n><CR>
nnoremap <leader>sh :e<space>term://bash<CR>
onoremap p i(
onoremap b /return<cr>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap an( :<c-u>normal! 0vf(h<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>


autocmd BufWritePre *.html :normal gg=G
autocmd FileType python nnoremap <buffer> cc I#<esc>
autocmd FileType javascript nnoremap <buffer> cc I//<esc>
autocmd StdinReadPost *.txt :setlocal spell spelllang=en_us
autocmd Filetype python :iabbrev <buffer> iff if:<left>
autocmd Filetype javascript :iabbrev <buffer> iff if ()<left>
autocmd Filetype html :iabbrev <buffer> l" &ldquo;
autocmd Filetype html :iabbrev <buffer> r" &rdquo;
autocmd Filetype java :iabbrev <buffer> mainmethod public static void main(String[] args(){}<left> 

let mylist = [1, 'two', 3, "four"]
let emptyList = []

let nestList = [[11,12], [21,22], [31,32]]

augroup filetype_html
  autocmd!
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

autocmd Filetype javascript :iabbrev <buffer> tryc try{<CR><CR>}catch(error){<CR><CR>}<UP><Esc>kkkA

function DisplayName(name)
  echom "Hello! my name is:"
  echom a:name
endfunction

function UnscopedDisplayName(name)
  echom "Hello! My name is:"
  echom name
endfunction

function Varg(...)
  echom a:0
  echom a:1
  echom a:2
  echom a:000
endfunction

function Assign(foo)
  let a:foo = "nope"
  echom a:foo
endfunction

function AssignGood(foo)
  let foo_tmp = a:foo
  let foo_tmp = "yep"
  echom foo_tmp
endfunction

function Table(title, ...)
  echohl Title
  echo a:title
  echohl None
  echo a:0 . " items:"
  for s in a:000
    echon ' '. s
  endfor
endfunction



