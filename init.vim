"" 开启行号
set number
"" 设置缩进数量
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
"" 设置自动缩进
set autoindent

"" 检测文件类型
filetype on
"" 设置编码方式
set encoding=utf-8

"" 安装插件
call plug#begin()
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'yggdroot/leaderf'
call plug#end()

"" 配置COC
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"" 配置颜色主题
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let gruvbox_italic=1
colorscheme gruvbox

source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

"" 配置NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"" 开启自动标签页
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '

nnoremap <C-N> :bn<CR>
nnoremap <C-D> :bdelete<CR>
nnoremap <C-P> :bp<CR>

set laststatus=2

"" 映射esc到jk
inoremap jk <ESC>
vnoremap jk <ESC>

"" Leaderf rg
nnoremap <C-r> :Leaderf rg<CR>

"" Leaderf
nnoremap <C-l> :LeaderfFunction<CR>
