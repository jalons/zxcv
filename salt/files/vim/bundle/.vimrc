
execute pathogen#infect()
filetype plugin indent on

"colorscheme elflord
colorscheme desert

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set hidden
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< 

set number
syntax on

let mapleader=","

set backspace=indent,eol,start

"set mouse=a

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=2       "deepest fold is 2 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" In normal mode, press Space to toggle the current fold open/closed. However,
" if the cursor is not in a fold, move to the right (the default behavior). In
" addition, with the manual fold method, you can create a fold by visually
" selecting some lines, then pressing Space.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"set mouse=a

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"http://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
"let &colorcolumn=join(range(81,999),",")
"highlight ColorColumn ctermbg=235 guibg=#2c2d27
"let &colorcolumn="80,".join(range(120,999),",")

"set textwidth=80
set colorcolumn=+1
" light grey
hi ColorColumn guibg=#2d2d2d ctermbg=235

" dark grey 
" hi ColorColumn guibg=#2d2d2d ctermbg=246

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

map <F7> mzgg=G`z<CR>

let g:VimuxUseNearestPane = 1

" Vimux
map <silent> <LocalLeader>rl :wa<CR> :VimuxRunLastCommand<CR>
map <silent> <LocalLeader>vi :wa<CR> :VimuxInspectRunner<CR>
map <silent> <LocalLeader>vk :wa<CR> :VimuxInterruptRunner<CR>
map <silent> <LocalLeader>vx :wa<CR> :VimuxClosePanes<CR>
map <silent> <LocalLeader>vp :VimuxPromptCommand<CR>
vmap <silent> <LocalLeader>vs "vy :call VimuxRunCommand(@v)<CR>
nmap <silent> <LocalLeader>vs vip<LocalLeader>vs<CR>

"-- Tabbed Editing --
"Open a new (empty) tab by pressing CTRL-T. Prompts for name of file to edit
map <C-T> :tabnew<CR>:edit
"Open a file in a new tab by pressing CTRL-O. Prompts for name of file to edit
map <C-O> :tabfind
"Switch between tabs by pressing Shift-Tab
map <S-Tab> gt


"-- Cursors --
" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=black
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkoff0
" set guicursor+=i:blinkwait10

set wildignore+=*.pyc,*.o,*.class,*.lo,.git,vendor/*,node_modules/**

" CommandT
map <silent> <leader>ff :CommandT<CR>
map <silent> <leader>fb :CommandTBuffer<CR>
map <silent> <leader>fr :CommandTFlush<CR>


let g:tmux_sessionname='0'
let g:tmux_windowname='./ipython.sh'
let g:tmux_panenumber='0'

let g:vimux_pyutils_use_tslime=1

"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white 
set cursorline


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_quiet_messages = { "type": "style" } 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" set nobackup       "no backup files
" set nowritebackup  "only in case you don't want a backup file while editing
" set noswapfile     "no swap files
