#!/bin/bash

mydir=$(pwd)

echo "->Generating Lexical Analyser via lex using prob1.l."
flex prob1.l

echo "->Generating Parser using via yacc using chain.y."
yacc -d chain.y
cc lex.yy.c y.tab.c -o prob1.out

echo "->Parser generated: prob1.out. Executing"
./prob1.out
