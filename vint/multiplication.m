||Multiplication algorithm from the book: Introduction to Functional Programming.
||Authors: Richard S. Bird, Philip Wadler.
||Chapter 4.2.3: Multiplication.

%include "addandsub.m"

psums xs ys = map(bmul xs) ys
bmul xs y = norm(map(* y) xs)
shift xs ys = vadd(xs ++ [0]) ys
vmul xs ys = foldl1 (shift) (psums xs ys)
