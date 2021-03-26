||Addition and substrction algorithms from the book: Introduction to Functional Programming.
||Authors: Richard S. Bird, Philip Wadler.
||Chapter 4.2.2: Addition and substraction.

%include "comparison.m"

vint == [bigit]
bigit == num

||base ten:
b = 10

carry x (c : xs) = (x + c) div b : (x + c) mod b:xs

norm = strep.foldr carry [0]

zipwith f (xs,ys) = [f x y|(x,y) <- zip(xs,ys)]

vadd xs ys = norm (zipwith (+) (align xs ys))
vsub xs ys = norm (zipwith (-) (align xs ys))

negative xs = (hd xs < 0)
negate = norm.map neg
