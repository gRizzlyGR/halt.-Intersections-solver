:- module(circolazione, [circolano/0, ordine/2]).

:- use_module(precedenze).
:- use_module(msg).
:- use_module(utils).
:- use_module(gestore_kb).


init :-
	test('fig58', _),
	circolano.
	


% Due veicoli (o gruppi di veicoli)
circolano :-
	nessun_prossimo,

	prima,
	infine.

% Almeno tre veicoli (o gruppi di veicoli)
circolano :-
	almeno_un_prossimo,	

	prima,
	dopo,
	infine.

% Tutti i veicoli hanno la destra occupata e spetta ad uno impegnare per primo l'incrocio
% per consentire agli altri di passare (precedenza di fatto)
circolano :-
	attesa_circolare([AlCentro | Altri]),
	msg:va_al_centro(AlCentro),

	ordine(Altri, Ordinata),
	msg:prossimi_a_passare(Ordinata),

	msg:ultimo_dal_centro(AlCentro).	
	
	


% Uno o più veicoli potrebbero passare nello stesso momento;
% viene recuperata una lista di uno o più elementi.

prima :-
	tutti_i_primi(Veicoli),
	msg:primi_a_passare(Veicoli).


% Tratta il caso in cui una serie di veicoli possono passare uno dopo l'altro, o tutti insieme, o entrambe le situazioni.
% Nel caso misto, vengono prima recuperati i veicoli simultanei, tranne uno che viene conivolto nell'ordinamento dei veicoli
% che passano uno alla volta, infine tale veicolo simultaneo viene rimpiazzato dalla lista dei veicoli simultanei trovata
% precedentemente.
dopo :-
	tutti_i_prossimi(Prossimi),
	prossimi_insieme(PassanoInsieme),

	append(PassanoInsieme, NonSimultanei, Prossimi),
	recupera_veicolo_simultaneo(PassanoInsieme, VeicoloSim),

	aggiungi_veicolo_simultaneo(VeicoloSim, NonSimultanei, P2),
	ordine(P2, Ordinata),

	utils:sostituisci(PassanoInsieme, VeicoloSim, Ordinata, P3),
	msg:prossimi_a_passare(P3).


dopo :-
	tutti_i_prossimi(Prossimi),
	ordine(Prossimi, Ordinata),
	msg:prossimi_a_passare(Ordinata).

% Nel caso ci siano soltanto due veicoli (o gruppi di veicoli) che passano come primo e ultimo
nessun_prossimo :-
	\+ prossimo(_).


almeno_un_prossimo :-
%	prossimo(_).
	\+ nessun_prossimo.



% Se non ho veicoli simultanei, la lista è vuota, altrimenti recupero la testa.
recupera_veicolo_simultaneo([], []).
recupera_veicolo_simultaneo([H|_], H).

% Aggiungo un veicolo simultaneo per permettere l'ordinamento.
% Se non ci sono veicoli simultanei, ho una lista vuota.
aggiungi_veicolo_simultaneo([], L, L).
aggiungi_veicolo_simultaneo(Veicolo, L, [Veicolo | L]).



infine :-
	tutti_gli_ultimi(Veicoli),
	msg:ultimi_a_passare(Veicoli).


% Ordinamento. Il cut previene il duplicato della lista ordinata quando quella di input è già ordinata di suo.
ordine(Lista, Ordinata) :-
	utils:perm(Lista, Ordinata),
	ordinato(Ordinata),
	!.

ordinato([]).
ordinato([_]).
ordinato([X,Y|T]) :-
	precede(X,Y),
%	\+ simultaneo(X, Y),
%	passa_prima(X, Y),
	ordinato([Y|T]).	

