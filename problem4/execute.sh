#!/bin/bash

mydir=$(pwd)

echo "->Generating Lexical Analyser via lex using prob4.l."
flex prob4.l

echo "->Generating Parser using via yacc using crypt.y."
yacc -d crypt.y
cc lex.yy.c y.tab.c -o prob4.out

echo ""
echo "->Test Spec 1"
echo "->Input: "
echo "Loc(Sim(Vig(therewasmovementatthestation, banjo) ,thequickbrownfxjmpsvlazydg) ,10)"
echo "->Output:"
echo "Loc(Sim(Vig(therewasmovementatthestation, banjo) ,thequickbrownfxjmpsvlazydg) ,10)" | ./prob4.out

echo ""
echo "->Test Spec 2"
echo "->Input: "
echo "V(twentysix - eleven, eleven)"
echo "->Output:"
echo "V(twentysix - eleven, eleven)" | ./prob4.out
