:- module(adiacenza, [adiacente/2]).

collegato(braccio(nord), braccio(nord_est)).
collegato(braccio(nord_est), braccio(est)).
collegato(braccio(est), braccio(sud_est)).
collegato(braccio(sud_est), braccio(sud)).
collegato(braccio(sud), braccio(sud_ovest)).
collegato(braccio(sud_ovest), braccio(ovest)).
collegato(braccio(ovest), braccio(nord_ovest)).
collegato(braccio(nord_ovest), braccio(nord)).

adiacente(braccio(X), braccio(Y)) :-
	collegato(braccio(X), braccio(Y)).

adiacente(braccio(X), braccio(Y)) :-
	collegato(braccio(Y), braccio(X)).

adiacente(braccio(X), braccio(Y)) :-
	collegato(braccio(X), braccio(Z)),
	collegato(braccio(Z), braccio(Y)).

adiacente(braccio(X), braccio(Y)) :-
	collegato(braccio(Y), braccio(Z)),
	collegato(braccio(Z), braccio(X)).
