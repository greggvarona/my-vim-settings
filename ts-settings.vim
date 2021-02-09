let g:coc_global_extensions = ['coc-tsserver']
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
" set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" GoTo code navigation.
map <leader>d <Plug>(coc-definition)
map <leader>td <Plug>(coc-type-definition)
map <leader>i <Plug>(coc-implementation)
map <leader>r <Plug>(coc-references)

" Remap keys for applying codeAction to the current line.
map <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
map <leader>qf  <Plug>(coc-fix-current)
