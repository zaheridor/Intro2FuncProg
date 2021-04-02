||A possible representation for signed-magnitude numbers, redefining addition and substraction.
||Exercise from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter: 4.2.
||Exercise 4.2.8

%include "comparison.m"
%include "addandsub.m"

signnums :: (char,[num]) -> (char,[num]) -> (char,[num])
signnums (sx, xs) (sy, ys) = (sx, vadd xs ys), if (sx = '-' & sy = '-') \/ (sx ~= '-' & sy ~= '-')
                           = (sy, negate (resta)), if vless xs ys
                           = (sx, resta), otherwise
                             where resta = vsub xs ys
