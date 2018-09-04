let g:jellybeans_overrides = {
            \   'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
            \}
colorscheme jellybeans

set encoding=utf-8

"------------------------------------------------------------
"ale settings

let g:ale_lint_delay=1
let g:ale_lint_on_text_changed=1
let g:ale_lint_on_enter=1
let g:ale_lint_on_save=0
let g:ale_set_loclist=1
let g:ale_set_signs=1
let g:ale_sign_column_always=0
let g:ale_echo_cursor=1

" let g:ale_sign_error='>>'
" let g:ale_sign_warning='--'
let g:ale_sign_error='✖'
let g:ale_sign_warning='⚠'

let g:ale_statusline_format=['✖ %d', '⚠ %d', '⬥ OK']

let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]'

let g:ale_linters={
            \   'c': ['gcc'],
            \   'cpp': ['g++'],
            \   'python': ['flake8'],
            \   'javascript': ['eslint']
            \}

let g:ale_python_flake8_args='--format=default --ignore=F403,F401,W391 --max-line-length=100'
let g:ale_cpp_gcc_options='-I./ -I../include -I./include -std=c++1y -fsyntax-only -Wall -Wextra'
let g:ale_c_gcc_options='-I./ -I../include -I./include -std=c11 -fsyntax-only -Wall -Wextra'

"------------------------------------------------------------
"airline settings

let g:airline#extensions#ale#enabled = 1
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

"------------------------------------------------------------
"deoplete settings

let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<S-tab>"
inoremap <silent><expr><C-Space> deoplete#mappings#manual_complete()

"------------------------------------------------------------
"NerdTree

let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NerdTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <silent> <Leader>fv :NERDTreeFind<CR>

if dein#tap('leader-guide')
    nnoremap <silent> <Leader> :<c-u>LeaderGuide '<Space>'<CR>
    vnoremap <silent> <Leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
endif
