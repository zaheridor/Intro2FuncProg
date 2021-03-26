||Basic comparison operations for variable-length arithmetic from the book: Introduction to Functional Programming.
||Authors: Richard S. Bird, Philip Wadler.
||Chapter 4.2.1: Comparison operations.

strep xs = [0], if ys = []
         = ys, otherwise
           where ys = dropwhile (= 0) xs

align xs ys = (copy 0 n ++ xs,ys), if n > 0
            = (xs,copy 0 (-n) ++ ys), otherwise
              where n = #ys - #xs

copy x n = [x|j <- [1..n]]

vcompare op xs ys = op us vs where (us,vs) = align xs ys

veq xs ys = vcompare (=) xs ys
vleq xs ys = vcompare (<=) xs ys
vless xs ys = vcompare (<) xs ys
vmoq xs ys = vcompare (>=) xs ys
vmore xs ys = vcompare (>) xs ys
