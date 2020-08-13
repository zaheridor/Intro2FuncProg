||Program to convert numbers to words from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter: 4.1.
||Excercise 4.1.4: Write a program to convert a whole number of pence into words.

%include "numbers2words.m"

convertPence n = combine3(digits3 n)
combine3(0, t+1) = convert2(t+1) ++ " pence."
combine3(h+1, 0) = convert2(h+1) ++ " pounds."
combine3(h+1, t+1) = convert2(h+1) ++ " pounds and " ++ convert2(t+1) ++ " pence."
