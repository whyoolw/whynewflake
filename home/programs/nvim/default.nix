{ config, ... }:
{
  home.file.".config/nvim/init.vim".text = ''
vnoremap <C-c> "+y
map <C-p> "+p
set number
set nocompatible
set ignorecase
syntax on
set wildmode=longest,list
set ttyfast
set wildmode=longest,list
set autoindent
set smartindent

"call plug#begin()"

"Plug 'AlphaTechnolog/pywal.nvim', { 'as': 'pywal' }"

"call plug#end()"

"colorscheme pywal"
  '';
}