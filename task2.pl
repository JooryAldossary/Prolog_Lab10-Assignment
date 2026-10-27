% Task 2
user(admin, admin123).
user(student, pass123).
user(ahmed, prolog123).

login :-
    login_attempt(3).

login_attempt(Attempts) :-
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    (   user(Username, Password)
    ->  write('Login Successful'), nl
    ;   write('Login Unsuccessful'), nl,
        Remaining is Attempts - 1,
        (   Remaining > 0
        ->  login_attempt(Remaining)
        ;   write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl
        )
    ).

% Run with: ?- login.