||¿Is that the case that "negate = vsub [0]"?
||R:/ The "probe" function probes that case as affirmative.
||Exercise from the book: Introduction to Functional Programming.
||Author: zaheridor.
||Chapter: 4.2.
||Exercise 4.2.3

%include "comparison.m"
%include "addandsub.m"

probe xs = negate xs = vsub [0] xs
