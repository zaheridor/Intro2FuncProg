||Program to convert numbers to words from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter 4.1.
||Exercise 4.1.2: Generalise the solution to handle positive numbers up to one billion.

%include "numbers2words.m"

||billions
convert9 n = combine9(digits9 n)
digits9 n = (n div 1000000, n mod 1000000)
combine9(0, m+1) = convert6(m+1)
combine9(b+1000, m) = units !0 ++ " billion or more!"
combine9(b+1, 0) = convert6(b+1) ++ " million"
combine9(b+1, m+1) = convert6(b+1) ++ " million" ++ link(m+1) ++ convert6(m+1)
