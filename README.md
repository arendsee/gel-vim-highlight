# GEL syntax file

This repository provides a syntax file that allows highlighting GEL code in
Vim.

## Description

GEL is a graphics exploration language used in the network analysis program
[Mango](http://www.complex.iastate.edu/download/Mango/index.html).

## INSTALLATION

Run the following in your UNIX terminal

```
mkdir -p ~/.vim/syntax/
mkdir -p ~/.vim/ftdetect/
cp gel.vim ~/.vim/syntax/
echo 'au BufRead,BufNewFile *.gel set filetype=gel' > ~/.vim/ftdetect/gel.vim
```

Then highlighting should appear automatically whenever you open a file with the
.gel extension.
