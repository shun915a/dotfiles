if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Basics
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('github/copilot.vim')
  " https://github.com/Shougo/deoplete.nvim/blob/18788fc822abd1ac1ffc1a8189afbfae15d06cf9/doc/deoplete.txt#L1793-L1796
  call dein#add('ncm2/float-preview.nvim')
  " https://github.com/Shougo/deoplete.nvim/blob/18788fc822abd1ac1ffc1a8189afbfae15d06cf9/doc/deoplete.txt#L1682-L1686
  call dein#add('Shougo/echodoc.vim')
  call dein#add('neovim/nvim-lspconfig')
  call dein#add('Shougo/deoplete-lsp')
  " https://github.com/neovim/nvim-lspconfig/issues/69
  call dein#add('onsails/diaglist.nvim')
  call dein#add('Shougo/Denite.nvim')
  call dein#add('Shougo/neoyank.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/defx.nvim')
  call dein#add('tpope/vim-dispatch')
  call dein#add('vim-test/vim-test')
  call dein#add('tyru/open-browser.vim')
  call dein#add('kana/vim-textobj-user')
  call dein#add('bkad/CamelCaseMotion')
  call dein#add('pbrisbin/vim-mkdir')
  call dein#add('ryanoasis/vim-devicons')
  " Remove once https://github.com/ryanoasis/vim-devicons/issues/296 is completed
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  end

  " Snippets
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " Editing
  call dein#add('tpope/vim-commentary')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('tpope/vim-surround')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('tpope/vim-abolish')

  " JavaScript
  call dein#add('pangloss/vim-javascript', { 'on_ft': ['javascript'] })

  " Ruby/Rails
  call dein#add('tpope/vim-endwise', { 'on_ft': ['ruby'] })
  call dein#add('tpope/vim-rails', { 'on_ft': ['ruby'] })

  " Protocol Buffer
  call dein#add('uarun/vim-protobuf')

  " Status/Tabline
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

syntax enable

" Basics
set completeopt-=preview " Disabling preview window
set clipboard^=unnamed,unnamedplus
let mapleader=" "
set number relativenumber
set backupdir=/private/tmp
set dir=/private/tmp
set backspace=indent,eol,start
set confirm
set iskeyword+=-,_
set laststatus=3
autocmd BufWritePre * :%s/\s\+$//ge " Deleting trailing whitespaces
set colorcolumn=81
" https://stackoverflow.com/a/55056589/1446551
highlight ColorColumn ctermbg=238
set updatetime=100
set splitright

" Indent
set autoindent

" Auto insert
set smartindent
set expandtab

" Move selected block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

if has("autocmd")
  filetype plugin on
  filetype indent on
  " when u wanna turn it off
  " autocmd FileType html filetype indent off

  autocmd FileType apache     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType conf       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sass       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType scss       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType diff       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType jst        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType markdown   setlocal sw=2 sts=2 ts=2 et
  autocmd FileType java       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescriptreact setlocal sw=2 sts=2 ts=2 et
  autocmd FileType json       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et
  autocmd FileType perl       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cucumber   setlocal sw=2 sts=2 ts=2 et
  autocmd FileType puppet     setlocal sw=2 sts=2 ts=2 et
  autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vb         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType wsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xhtml      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala      setlocal sw=2 sts=2 ts=2 et
  autocmd FileType go         setlocal sw=4 sts=4 ts=4 noet
  autocmd FileType tf         setlocal sw=2 sts=2 ts=2 et
  autocmd Filetype elixir     setlocal sw=2 sts=2 ts=2 et
endif
" turn off auto indent when leaving from insert mode
autocmd InsertLeave * set nopaste

" Search
nmap <leader>hl :set hlsearch! hlsearch?<cr>
" hit Cap letters even when searching with non Cap
set ignorecase
" distinct Cap and none Cap when searching with Cap and none combined
set smartcase
" instant search with enter after the word
set incsearch
" stop at the end of the file
set nowrapscan

" airline
" https://github.com/vim-airline/vim-airline/blob/26f922753a288df639b8d05d13ed62b9b04a26bc/doc/airline.txt#L440-L444
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%-0.10{getcwd()}'
let g:airline_section_c = '%t'

" Defx
nmap <silent><c-f><c-f> :Defx `expand('%:p:h')` -search=`expand('%:p')` -show-ignored-files -columns=icons:indent:filename:type -buffer-name=`'defx' . tabpagenr()`<cr>
autocmd FileType defx call s:defx_my_settings()

function! s:defx_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
   \ defx#do_action('drop')
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('drop')
  nnoremap <silent><buffer><expr> t
  \ defx#do_action('open','tabnew')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('drop', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('drop', 'pedit')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction

call defx#custom#option('_', {
      \ 'winwidth': 40,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 1,
      \ 'buffer_name': 'exlorer',
      \ 'toggle': 1,
      \ 'resume': 1,
      \ 'columns': 'icons:indent:filename:type',
      \ })
call defx#custom#column('git', 'indicators', {
  \ 'Modified'  : '✹',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '✖',
  \ 'Unknown'   : '?'
  \ })

" Denite
call denite#custom#option('_', 'statusline', v:false) " Disabling internal statusline
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <cr>
        \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> <leader>vs
        \ denite#do_map('do_action', 'vsplit')
  nnoremap <silent><buffer><expr> d
        \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
        \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
        \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
        \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> s
        \ denite#do_map('toggle_select')
  nnoremap <silent><buffer><c-b>
        \ :<c-u>call <SID>denite_quickfix()<cr>
endfunction
" https://github.com/Shougo/denite.nvim/commit/3c7f0e1c1567d9338dea86ee190766ec64f1f510
function! s:denite_quickfix()
  call denite#call_map('toggle_select_all')
  call denite#call_map('do_action', 'quickfix')
endfunction

nmap <silent><c-p> :Denite file/rec<cr>
nmap <silent><leader>b :Denite buffer<cr>
nmap <silent><leader>m :Denite file_mru<cr>
nmap <silent><leader>f :Denite grep -post-action=open<cr>
nmap <silent><leader>wf :DeniteCursorWord grep -post-action=open<cr>
nmap <silent><leader>y :Denite neoyank<cr>
call denite#custom#option('_', 'max_dynamic_update_candidates', 200000)
call denite#custom#option('_', 'start_filter', 'true')
call denite#custom#var('file/rec', 'command', ['ag', '--hidden', '--follow', '--nogroup', '-g', ''])
call denite#custom#var('grep', {
      \ 'command': ['ag'],
      \ 'default_opts': [],
      \ 'recursive_opts': [],
      \ 'pattern_opt': [],
      \ 'final_opts': [],
      \ })
" call denite#custom#source('grep', 'args', ['', '', '!']) " intereactive mode
call denite#custom#source('grep', 'converters', ['converter/abbr_word']) " narrow by path in grep source.

