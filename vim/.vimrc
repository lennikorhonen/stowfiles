" set tabwidth to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set foldmethod=manual

" Enable syntax highlighting
syntax enable
set encoding=utf-8

set background=dark
colorscheme gruvbox

"
" " Enable line numbers
set number relativenumber
set ruler
set noerrorbells
set showmode
set colorcolumn=80
"
" " Highlight search results as you type
set incsearch
"
" " Highlight current line
set cursorline
"
" " Enable mouse support
set mouse=a
"
" " Enable auto-indentation
set autoindent

set nocompatible

set showcmd
set wildmenu

" " Exit insert mode by double tapping JJ
imap JJ <ESC>

inoremap ( ()<ESC>hli
inoremap [ []<ESC>hli
inoremap { {}<ESC>hli
inoremap ' ''<ESC>hli
inoremap " ""<ESC>hli
inoremap ` ``<ESC>hli

filetype plugin indent on

" " ## Set stuff for gdscript and godot
func! GodotSettings() abort
    let g:godot_executable = "/home/lenni/Godot_v4.4.1-stable_mono_linux_x86_64/Godot_v4.4.1-stable_mono_linux.x86_64"
    setlocal foldmethod=expr
    setlocal tabstop=4
    nnoremap <buffer> <F4> :GodotRunLast<CR>
    nnoremap <buffer> <F5> :GodotRun<CR>
    nnoremap <buffer> <F6> :GodotRunCurrent<CR>
    nnoremap <buffer> <F7> :GodotRunFZF<CR>
endfunc
augroup godot | au!
    au FileType gdscript call GodotSettings()
augroup end

