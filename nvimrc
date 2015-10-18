call plug#begin('~/.nvim/plugged')

Plug 'benekastah/neomake'

call plug#end()

autocmd! BufWritePost * Neomake
