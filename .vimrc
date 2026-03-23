# set options
set tabstop=4
set shiftwidth=4
set relativenumber number

# 42 user credentials
let g:user42 = 'belam'
let g:mail42 = 'belam@student.42iskandarputeri.edu.my'

# bindings
let mapleader = ' '

# copy paste into different vim instance
vnoremap <leader>y :w! /tmp/vimtmp<CR>
vnoremap <leader>d :w! /tmp/vimtmp<bar>:'<,'>d<CR>
nnoremap <leader>p :r! cat /tmp/vimtmp<CR>
