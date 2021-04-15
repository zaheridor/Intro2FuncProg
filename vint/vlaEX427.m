||Modifying the definition of 'vmul' to use 'foldl' instead of 'foldl1'.
||Exercise from the book: Introduction to Functional Programming.
||Author: zaheridor
||Chapter 4.2.7

%include "addandsub.m"
%include "multiplication.m"

cabeza xs ys = hd (psums xs ys)
cola xs ys = tl (psums xs ys)
vmul2 xs ys = foldl (shift) (cabeza xs ys) (cola xs ys)
