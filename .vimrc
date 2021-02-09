set backspace=indent,eol,start

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'safv12/andromeda.vim'
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'fatih/vim-go', { 'tag': 'v1.24', 'do': ':GoUpdateBinaries'}

Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype on
filetype plugin on

augroup go_settings
	autocmd FileType go source ~/go-settings.vim
augroup end

augroup ts_settings
	autocmd FileType typescript source ~/ts-settings.vim
augroup end

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
set runtimepath^=~/.vim/bundle/ctrlp.vim
" set runtimepath^=~/.vim/bundle/fzf
" set runtimepath^=~/.vim/bundle/fzf.vim

" NERDTree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif | call lightline#update()
map <f2> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif | call lightline#update()
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1

" lightline
let g:lightline = {
      \ 'component_function': {
      \   'filename': 'LightlineFilename'
      \ }
      \ }
function! LightlineFilename()
  return expand('%')
endfunction

" COC
	inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ?
	  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	let g:coc_snippet_next = '<tab>'


" misc
set wrap!
set textwidth=0
set wrapmargin=0
set number rnu
set laststatus=2
syntax enable
set ruler
set listchars=tab:>·,trail:~,extends:>,precedes:<
set list

set background=dark    " Setting dark mode
colorscheme andromeda

" key bindings
map <Leader>s :Ag<CR>
map <Leader>rg :Rg<CR>
map <Leader>gf :GFiles<CR>

