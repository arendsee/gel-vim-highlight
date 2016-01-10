" Vim syntax file
" Language: gel
" Maintainer: Zebulun Arendsee
" Latest Revision: 21 October 2015
" -----------------------------------------------------------------------------
" INSTALLATION
" Run the following in your UNIX terminal
" $ mkdir -p ~/.vim/syntax/
" $ mkdir -p ~/.vim/ftdetect/
" $ cp gel.vim ~/.vim/syntax/
" $ echo 'au BufRead,BufNewFile *.gel set filetype=gel' > ~/.vim/ftdetect/gel.vim

if exists("b:current_syntax")
  finish
endif

" define keywords
syn keyword keyword     set save run
syn keyword function    clear import rand
syn keyword repeat      foreach in
syn keyword conditional if else
syn keyword type        int string float node graph link

" setting operators
syn match operator '+'
syn match operator '-'
syn match operator '.+='
syn match operator '.-='
syn match operator '/'
syn match operator '\*'
syn match operator '='
syn match operator '+='
syn match operator '-='
syn match operator '/='
syn match operator '\*='
syn match operator '\./='
syn match operator '\.\*='
syn match operator '=='
syn match operator '!='
syn match operator '&'
syn match operator '&&'
syn match operator '|'

" define constants
" TODO this currently highlights numbers inside strings, e.g. r5g or 5r or r5
" syn match constant '\([a-zA-Z_]\)\@!-\?[1-9]\d*\h\@!'
syn match constant '\h\@<!\(\d*\.\d\+\|\d\+\)\h\@!'
syn region constant start="'" end="'"
syn region constant start='"' end='"'

" define todo highlighting
syn keyword tag contained TODO NOTE

" define comments
syn match comment '\/\/.*$' contains=tag
syn region comment start='\/\*' end='\*\/' contains=tag


let b:current_syntax = "gel"
hi def link keyword     Keyword     
hi def link repeat      Repeat      
hi def link conditional Conditional 
hi def link operator    Operator    
hi def link function    Function
hi def link type        Type        
hi def link constant    Constant
hi def link comment     Comment
hi def link todo        Todo
