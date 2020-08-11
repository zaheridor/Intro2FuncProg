||Program to convert numbers to words from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter 4.1.
||Exercise 4.1.3: Show how the solution can be adapted to handle negative numbers.
||Reminder from the book in chapter 2.1.1:
||"brackets will always be used to remove possible ambiguity from expressions involving unary minus"
||So, to run this exercise with negative numbers, you should write: convertz (-42)

%include "numbers2words.m"
%include "numbers2wordsEX412.m"

convertz n = "minus " ++ convert9 (n*(-1)), if n<0
           = "zero", if n=0
           = convert9 n, otherwise
