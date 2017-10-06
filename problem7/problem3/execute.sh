#!/bin/bash

mydir=$(pwd)

echo "->Generating Lexical Analyser via lex using prob1.l."
flex prob3.l

cc lex.yy.c -o prob3.out

echo "->Executing prob3.out"

echo ""
echo "->Test Spec 1"
echo "->Input: "
echo "Loc(Sim(Vig(therewasmovementatthestation, banjo) ,thequickbrownfxjmpsvlazydg) ,10)"
echo "->Output:"
echo "Loc(Sim(Vig(therewasmovementatthestation, banjo) ,thequickbrownfxjmpsvlazydg) ,10)" | ./prob3.out

echo ""
echo "->Test Spec 2"
echo "->Input: "
echo "V(twentysix - eleven, eleven)"
echo "->Output:"
echo "V(twentysix - eleven, eleven)" | ./prob3.out
