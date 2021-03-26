||Quotient and remainder algorithms from the book: Introduction to Functional Programming.
||Authors: Richard S. Bird, Philip Wadler.
||Chapter 4.2.4: Quotient and remainder.

%include "comparison.m"
%include "addandsub.m"
%include "multiplication.m"

divalg xs ys = scan (dstep ys) (0, take m xs) (drop m xs) where m = #ys - 1

dstep ys (q, rs) x = astep xs ys, if #xs < #ys
                   = bstep xs ys, if #xs = #ys
                   = cstep xs ys, if #xs = (#ys + 1)
                     where xs = rs ++ [x]

astep xs ys = (0,xs)

bstep xs ys = (0, xs), if negative zs
            = (1, zs), otherwise
              where zs = vsub xs ys

cstep xs ys = (q, rs0),     if vless rs0 ys
            = (q + 1, rs1), if vless rs1 ys
            = (q + 2, rs2), otherwise
              where rs0 = vsub xs (bmul ys q)
                    rs1 = vsub rs0 ys
                    rs2 = vsub rs1 ys
                    q   = (guess xs ys) - 2

guess (x0 : x1: xs) (y1 : ys) = b - 1, if x0 >= y1
                              = (x0 * b + x1) div y1, otherwise

vqrm xs ys = (strep qs, strep rs)
             where qs = map fst ds
                   rs = bdiv (snd (last ds) ) d
                   ds = divalg (bmul xs d) (bmul ys d)
                   d  = b div (hd ys + 1)

bqrm (x : xs) d = (strep qs, (last rs) mod d)
                  where qs     = map (div d) rs
                        rs     = scan (rx) x xs
                        rx r x = b * (r mod d) + x

bqrm [x] d = ([x div d], x mod d)

bdiv xs d = fst (bqrm xs d)
bmod xs d = snd (bqrm xs d)
