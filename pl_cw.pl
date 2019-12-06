% Arash's coursework template (Thanks Jamie Gabbay)
%

% My Name here, My UserID  <--- so we know who you are
% F28PL Coursework, Prolog    <--- sanity check


% Due: Friday 6th of Dec, 2019, at 3:30pm sharp.
% Submit (this file) via GitLab as usual.
% This coursework constitutes 6% of your final F28PL mark.

% You may assume variables, procedures, and functions defined in earlier questions
% in your answers to later questions, though you should add comments in code explaining
% this if any clarification might help read your code.


/* For All Questions, include testing in comments, so your marker can load this file as a
database then cut-and-paste any testing into the command line.

Testing on GitLab will NOT be provided for prolog. Your own test will in this case be
 marked - note this is unlike the python coursework.

*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 1   <--- Yes, so we know what question you think you're answering
%
% The complex numbers are explained here (and elsewhere):
%  http://www.mathsisfun.com/algebra/complex-number-multiply.html
% Represent a complex integer as a two-element list of integers, so [4,5] represents 4+5i.
% Write Prolog predicates
%  cadd/3
%  cmult/3
% representing complex integer addition and multiplication. Thus for instance,
%  cadd([X1,X2],[Y1,Y2],[Z1,Z2])
% succeeds if and only if Z1=X1+Y1 and Z2=X2+Y2.
% Note that complex number multiplication is not just like complex number addition.
% Check the link and read the definition.
%
%   <--- always have the question under your nose


cadd([X1,X2],[Y1,Y2],[Z1,Z2]) :- 
    Z1 is X1 + Y1,
    Z2 is X2 + Y2.

cmul([X1,X2],[Y1,Y2],[Z1,Z2]) :-
    Z1 is ( X1 * Y1 ) - ( X2 * Y2 ),
    Z2 is ( X1 * Y2 ) + ( X2 * Y1 ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END ANSWER TO Question 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 2
%
% An integer sequence is a list of integers. Write a Prolog predicate
%  seqadd/3
% such that seqadd(X,Y,Z) succeeds when X and Y are lists of integers of the same length and
% Z is their sequence sum.

seqadd( [],[],[] ).

seqadd( [X|TX], [Y|TY], [Z|TZ] ) :- seqadd( TX, TY, TZ ), Z is X + Y.



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END ANSWER TO Question 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 3
%
% 3a. Explain what backtracking has to do with Prolog. You might find this webpage helpful:
% https://www.doc.gold.ac.uk/~mas02gw/prolog_tutorial/prologpages/search.html


% The prolog language stores the knowledge if a three structure. All its clauses, including facts and rules, are stored in a three data structure. When the query is made in a intrepreter, the program does a depth first search through the knowledge database.
% This search will first search for the query predicate and if it finds it it will then search the first of its children with the purpose of instantiating the predicate variables or to verify if the query given predicate atom exists. If the first item does not unify the search will be backtracked recursively and look in the next children. This backtracking will then exhaust all the possible children clauses to try to unify the query, if not found in any of the backtrack searches it will fail and declare the query false.
%
% 3b. What is Cut in prolog and what does it have to do with backtracking? Explain your answer by giving examples of Cut
% used in at least one prolog rule, and explain how it affects the execution/resolution process.
%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END ANSWER TO Question 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 4
%
% Write a database for a predicate cycleoflife/1 such that the query
%  cycleoflife(X)
% returns the instantiations
%  X = eat
%  X = sleep
%  X = code
%  X = eat
%  X = sleep
%  X = code
%  ...
% in an endless cycle.
% (This question has a beautiful and simple answer. If you find yourself writing lines and lines of
% complex code, there’s probably something amiss.)


cycleoflife(eat).
cycleoflife(sleep).
cycleoflife(code).
cycleoflife(X) :- cycleoflife(X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% END ANSWER TO Question 5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
