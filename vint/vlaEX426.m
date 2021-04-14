||A possible representation for the 'outv' function, which converts an element of vint to string of digit characters.
||Exercise from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter: 4.2.
||Exercise 4.2.6

%include "comparison.m"
%include "addandsub.m"
%include "vlaEX425.m"

outv :: [bigit] -> [char]
outv xs = [decode ((x mod 10) + 48)|(i,x)<-zip([0..#xs-1],xs)]

||TODO: under the present implementation, there is not condition where the function 'iguales' evaluates to True.
||Pending taking into account using the base into the function 'outv'.
iguales :: [char] -> bool
iguales xs = outv(inv xs) = xs
