% Task 1
square(Side, Area, Perimeter) :-
    Side > 0,
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Length, Width, Area, Perimeter) :-
    Length > 0,
    Width > 0,
    Area is Length * Width,
    Perimeter is 2 * (Length + Width).

triangle(A, B, C, Area, Perimeter) :-
    A > 0, B > 0, C > 0,
    A + B > C, A + C > B, B + C > A,
    Perimeter is A + B + C,
    S is Perimeter / 2,
    Area is sqrt(S * (S - A) * (S - B) * (S - C)).

% Example queries:
% ?- square(4, Area, Perimeter).
% ?- rectangle(5, 3, Area, Perimeter).
% ?- triangle(3, 4, 5, Area, Perimeter).
