||A possible representation for the 'inv' function, which converts a string of digit characters to an element of vint.
||Exercise from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter: 4.2.
||Exercise 4.2.5

%include "comparison.m"
%include "addandsub.m"

inv::[char]->[bigit]
inv = pack.map digito

transnum::char->num
transnum x = code x - 48

digito :: char -> num
digito x = transnum x, if 0 <= transnum x <= 9
         = 0, otherwise

posicion xs = [[x*(10^i)]|(i,x)<-zip([0..#xs-1],xs)]

pack :: [num]->vint
pack xs = foldl (vadd) [0] (posicion(reverse xs))
