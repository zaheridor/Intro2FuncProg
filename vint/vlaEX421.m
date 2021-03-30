||Program to define the function absint from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter: 4.2.
||Exercise 4.2.1

%include "comparison.m"
%include "addandsub.m"

absint :: [num]->[num]
absint xs = negate zs, if negative zs
          = zs, otherwise
            where zs = strep xs
