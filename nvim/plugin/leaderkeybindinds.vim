"------------------------------------------------------------
"Leader key mappings and Vim Leader Guide settings

"Define prefix dictionary
nnoremap <silent> <Leader>- :split<cr>
nnoremap <silent> <Leader>\ :vsplit<cr>
nnoremap <silent> <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <silent> <Leader>sv :source $MYVIMRC<cr> :nohl<cr>
nnoremap Q <NOP>
nnoremap q <NOP>

"Navigate open panes
let g:lmap.w = { 'name' : 'Window Navigation'}
nnoremap <Leader>wj <C-W><C-J>
let g:lmap.w.j = ['wincmd j', 'Navigate down']
nnoremap <Leader>wk <C-W><C-K>
let g:lmap.w.k = ['wincmd k', 'Navigate up']
nnoremap <Leader>wl <C-W><C-L>
let g:lmap.w.l = ['wincmd l', 'Navigate right']
nnoremap <Leader>wh <C-W><C-H>
let g:lmap.w.h = ['wincmd k', 'Navigate left']
nnoremap <Leader>wm <C-W><C-O>
let g:lmap.w.m = ['wincmd o', 'Maximize window']
nnoremap <Leader>wJ :wincmd J<cr>
let g:lmap.w.J = ['wincmd J', 'Move window down']
nnoremap <Leader>wK :wincmd K<cr>
let g:lmap.w.K = ['wincmd K', 'Move window up']
nnoremap <Leader>wL :wincmd L<cr>
let g:lmap.w.L = ['wincmd L', 'Move window right']
nnoremap <Leader>wH :wincmd H<cr>
let g:lmap.w.H = ['wincmd H', 'Move window left']

"File operations
let g:lmap.f = { 'name' : 'File Menu' }
nnoremap <Leader>fs :w<cr>
let g:lmap.f.s = ['w', 'Write current buffer']
nnoremap <Leader>fS :wa<cr>
let g:lmap.f.S = ['wa', 'Write all buffers']
nnoremap <Leader>ft :NERDTreeToggle<cr>
let g:lmap.f.t = ['NERDTreeToggle', 'Toggle NERDTree']

"Quit operations
let g:lmap.q = { 'name' : 'Quit Options'}
nnoremap <Leader>qw :q<cr>
nnoremap <Leader>qn :q!<cr>
nnoremap <Leader>qq :qa<cr>

"Run CtrlP
let g:lmap.c = { 'name' : 'CtrlP'}
nnoremap <Leader>cd :CtrlP<cr>
nnoremap <Leader>cb :CtrlPBuffer<cr>
nnoremap <Leader>cm :CtrlPMixed<cr>
