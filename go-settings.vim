let g:go_fmt_command = "goimports"
let g:go_def_mode = "gopls"
let g:go_info_mode = "gopls"
let g:go_implements_mode = "gopls"
let g:go_highlight_function_parameters = 0
let g:go_highlight_function_calls = 0
let g:go_highlight_types = 0
let g:go_highlight_fields = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 0
let g:go_highlight_string_spellcheck = 0
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1

map <Leader>d :GoDef<CR>
map <Leader>gd :GoDoc<CR>
map <Leader>r :GoReferrers<CR>
map <Leader>i :GoImplements<CR>
map <Leader>fs :GoFillStruct<CR>
