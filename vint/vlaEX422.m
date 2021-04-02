||Program to probe that "vless xs ys = (absint xs < absint ys)", 
||taking into account that the result from "absint" treats with positive numbers, 
||so the result from that side of "vless" must be negated.
||Exercise from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter: 4.2.
||Exercise 4.2.2

%include "comparison.m"
%include "addandsub.m"
%include "vlaEX421.m"

probe xs ys = ((~ zs) = (vless xs ys))
              where zs = vless (absint xs) (absint ys)
