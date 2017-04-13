

pandigital(X, Y, Sum) :-
    between(100,999,X),
    between(100,999,Y),
    Sum is X + Y,
    between(1000,9999,Sum),
    unique_digits([X, Y, Sum], 10).

unique_digits(Numbers, Count) :-
    maplist(number_chars, Numbers, Chars),
    flatten(Chars, Digits),
    sort(Digits, Sorted),  % removes duplicates
    length(Sorted, Count).

