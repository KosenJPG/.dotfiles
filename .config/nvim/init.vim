" Line number on the side
set number relativenumber 

cmap ft filetype detect

"map h <insert>
"map i <Up>
"map j <Left>
"map k <Down>

" Enable syntax highlighting
syntax on

" Mouse support
set mouse=a

map k gk
map j gj

map <Up> gk
map <Down> gj

" Copy
vmap <C-c> "+yi
imap <C-c> "+yi

" Cut
vmap <C-x> "+c

" Paste
vmap <C-v> <ESC>"+pi
imap <C-v> <ESC>"+pi

" Ctrl +n twice in normal mode toggles number sidebar 
nmap <C-N><C-N> :let [&nu, &rnu] = [!&rnu, &nu+&rnu==1] <CR>  

" Use Terminal's colour scheme (Requires that file in ~/.config/nvim/colors (If you're using nvim))
color term

set tabstop=2          " Number of visual spaces per Tab
set softtabstop=2      " Number of spaces in tab when editing
set shiftwidth=2       " Number of spaces to use for autoindent
"set expandtab          " Tabs are spaces
set copyindent         " Copy the indentation from the previous line
"set autoindent

set incsearch          " Search as characters are typed
set hlsearch           " Highlight matches
set ignorecase         " Ignore case when searching
set smartcase          " Ignore case when only lower case is typed

" Automatic Brace
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i

" .rasi files use css syntax highlighting
au BufReadPost *.rasi set syntax=css       


set cursorline
"set cursorcolumn

" :let g:colorizer_auto_color = 1

:let g:colorizer_auto_filetype='css,html'

let g:livepreview_previewer = 'zathura'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" tabular plugin is used to format tables
Plug 'godlygeek/tabular'
" JSON front matter highlight plugin
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'

Plug 'vim-pandoc/vim-pandoc-syntax'

" if you don't have nodejs and yarn, use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'dylanaraps/wal.vim'
Plug 'https://github.com/DanManN/vim-razer'

call plug#end ()

colorscheme wal

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" do not close the preview tab when switching to other buffers
let g:mkdp_auto_close = 0

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
