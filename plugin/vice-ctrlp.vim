call vice#Extend({
    \ 'addons': [
        \ 'github:kien/ctrlp.vim'
    \ ]
\ })

let g:ctrlp_map = ""
let g:ctrlp_jump_to_buffer = 2
let g:ctrlp_working_path_mode = 2
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_user_command = {
\ 'types': {
    \ 1: ['.git/', 'cd %s && git ls-files'],
    \ 2: ['.hg/', 'hg --cwd %s locate -I .'],
    \ }
\ }
let g:ctrlp_open_new_file = 1
let g:ctrlp_cache_dir = expand($VIMHOME."/tmp/ctrlp_cache")
let g:ctrlp_open_multi = '1t'
let g:ctrlp_extensions = ['mixed', 'line', 'tag']

" CtrlP mappings
nnoremap gm :CtrlPMixed<cr>
nnoremap gl :CtrlPLine<cr>
nnoremap gb :CtrlPBuffer<cr>
nnoremap go :CtrlP<cr>
nnoremap gr :CtrlPMRUFiles<cr>
