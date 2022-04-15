:syntax on
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

" Set mouse scrolling
:set mouse=a
" :set mouse=nicr

call plug#begin('~\AppData\Local\nvim-data\plugged')

" All these plugin resources get from GitHub
Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/kyazdani42/nvim-web-devicons' " Topbar icons
Plug 'https://github.com/romgrk/barbar.nvim' " Topbar menu
Plug 'https://github.com/Yggdroot/indentLine' " Indent line
Plug 'https://github.com/preservim/tagbar' " Tagbar
Plug 'https://github.com/honza/vim-snippets' " Snippets python, html, ...
Plug 'https://github.com/flazz/vim-colorschemes' " Colorscheme
Plug 'https://github.com/SirVer/ultisnips' " Snip text
Plug 'https://github.com/farconics/victionary' " Dictionaries
Plug 'https://github.com/vim-utils/vim-vertical-move' " Selections
Plug 'https://github.com/dracula/vim' " Dracula theme
Plug 'https://github.com/nvim-treesitter/nvim-treesitter' " Treesitter
Plug 'https://github.com/farmergreg/vim-lastplace' " Jump to lastplace
Plug 'https://github.com/airblade/vim-rooter' " Jump to directory before
Plug 'https://github.com/ashisha/image.vim' " View images
Plug 'https://github.com/chaoren/vim-imageview' " View images
Plug 'https://github.com/junegunn/fzf' " Autocomplete
Plug 'https://github.com/nvim-lua/plenary.nvim' " Interact with telescope
Plug 'https://github.com/nvim-telescope/telescope.nvim' " Interact with telescope
Plug 'https://github.com/ray-x/lsp_signature.nvim' " Tags suggestion
Plug 'https://github.com/hrsh7th/nvim-compe' " Autocomplete
Plug 'https://github.com/akinsho/toggleterm.nvim' " Terminal styles
Plug 'https://github.com/rcarriga/nvim-notify' " Messages
Plug 'https://github.com/justinmk/vim-sneak' " Jump to any location specified by two characters

set encoding=UTF-8
call plug#end()

" -- Autocompletion --
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
autocmd VimEnter * NERDTree " Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree | wincmd p " Start NERDTree and put the cursor back in the other window.
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
nmap <F8> :TagbarToggle<CR>

:set nowrap " Without break line
:set termguicolors " Toptab color
:set completeopt-=preview " For No Previews
:set clipboard=unnamedplus " Set copy text to clipboard outside of neovim (y --> ctrl + v)
:color dracula
:colorscheme dracula " Set colorscheme

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Neovide plugin
set guifont=MesloLGM\ Nerd\ Font:h18

let g:neovide_refresh_rate=140 " Functionality | Refresh Rate
" let g:neovide_transparency=0.8 " Transparency
let g:neovide_no_idle=v:true " No Idle
let g:neovide_fullscreen=v:true " Fullscreen
let g:neovide_remember_window_size = v:true " Remember Previous Window Size
let g:neovide_input_use_logo=v:true " Input Settings | Use Logo Key
let g:neovide_touch_deadzone=6.0 " Touch Deadzone
let g:neovide_touch_drag_timeout=0.17 " Touch Drag Timeout
let g:neovide_cursor_animation_length=0.13 " Cursor Settings | Animation Length
let g:neovide_cursor_trail_length=0.8 " Animation Trail Length
let g:neovide_cursor_antialiasing=v:true " Antialiasing
let g:neovide_cursor_unfocused_outline_width=0.125 " Unfocused Outline Width
let g:neovide_cursor_vfx_mode = "railgun" " Cursor Particles | Railgun
"let g:neovide_cursor_vfx_mode = "torpedo" " Torpedo
"let g:neovide_cursor_vfx_mode = "pixiedust" " Pixiedust
"let g:neovide_cursor_vfx_mode = "sonicboom" " Sonic Boom
"let g:neovide_cursor_vfx_mode = "ripple" " Ripple
"let g:neovide_cursor_vfx_mode = "wireframe" " Wireframe
let g:neovide_cursor_vfx_opacity=200.0	" Particle Settings | Particle Opacity
let g:neovide_cursor_vfx_particle_lifetime=1.2 " Particle Lifetime
let g:neovide_cursor_vfx_particle_density=7.0 " Particle Density
let g:neovide_cursor_vfx_particle_speed=10.0 " Particle Speed
let g:neovide_cursor_vfx_particle_phase=1.5 " Particle Phase
let g:neovide_cursor_vfx_particle_curl=1.0 " Particle Curl

set guioptions-=m " Remove menu bar
set guioptions-=T " Remove toolbar
set guioptions-=r " Remove right-hand scroll bar
set guioptions-=L " Remove left-hand scroll bar

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰ '
let g:airline_symbols.dirty='⚡'

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"



" *** NOTE ***
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
