:- module(movimento, [
			svolta_a_u/2,
%			transitano_stesso_braccio/2,
%			entrambi_dritto/2,
%			entrambi_a_sinistra/4,
%			uno_a_sinistra/4,
%			nel_braccio_dell_altro/2,
%			dove_vado_uguale_dove_vieni/2,
			incrocia/2
			]).

:- use_module(gestore_kb).
:- use_module(destra).
:- use_module(adiacenza).
:- use_module(opposti).



incrocia(V1, V2) :-
	transitano_stesso_braccio(V1, V2).

incrocia(V1, V2) :-
	entrambi_dritto(V1, V2).

incrocia(V1, V2) :-
	entrambi_a_sinistra(V1, V2, VersoV1, VersoV2),
	proviene(V1, DaV1),
	proviene(V2, DaV2),
	adiacente(DaV1, DaV2),
	adiacente(VersoV1, VersoV2).

incrocia(V1, V2) :-
	uno_a_sinistra(V1, V2, VersoV1, VersoV2),
	proviene(V1, DaV1),
	proviene(V2, DaV2),
	adiacente(DaV1, DaV2),
	opposto(VersoV1, VersoV2).

incrocia(V1, V2) :-
	uno_a_sinistra(V1, V2, _, _),
	nel_braccio_dell_altro(V1, V2),
	\+ dove_vado_uguale_dove_vieni(V1, V2).

% Il braccio di arrivo di un veicolo è a destra del braccio di provenienza di un altro.
% Questo può comportare il caso in cui un veicolo proveniente da destra ma che da la precedenza ad un altro
% si diriga in un braccio svoltando ad U.
svolta_a_u(V1, V2) :-
	transita(V1, _, Arrivo),
	proviene(V2, Partenza),
	destra_lasca(Arrivo, Partenza).

transitano_stesso_braccio(V1, V2) :-
	transita(V1, _, StessoBraccio),
	transita(V2, _, StessoBraccio).

% Copre il caso in cui i veicoli proseguono dritto, evitando di andare l'uno nel braccio nell'altro,
% altrimenti non potrebbero incrociarsi.
entrambi_dritto(V1, V2) :-
	transita(V1, dritto, _),
	transita(V2, dritto, _),
	\+ nel_braccio_dell_altro(V1, V2).
%	\+ opposto(BraccioV1, BraccioV2).

% Entrambi i veicoli vanno a sinistra.
entrambi_a_sinistra(V1, V2, BraccioV1, BraccioV2) :-
	transita(V1, sinistra, BraccioV1),
	transita(V2, sinistra, BraccioV2).

% Un veicolo va a sinistra.
uno_a_sinistra(V1, V2, BraccioV1, BraccioV2) :-
	transita(V1, sinistra, BraccioV1),
	transita(V2, _, BraccioV2).

uno_a_sinistra(V1, V2, BraccioV1, BraccioV2) :-
	transita(V1, _, BraccioV1),
	transita(V2, sinistra, BraccioV2).

% Un veicolo si dirige nel braccio di provenienza dell'altro
nel_braccio_dell_altro(V1, V2) :-
	proviene(V1, BraccioV1),
	transita(V2, _, BraccioV1).

nel_braccio_dell_altro(V1, V2) :-
	proviene(V2, BraccioV2),
	transita(V1, _, BraccioV2).

% I veicoli vanno reciprocamente nei bracci di provenienza dell'altro
dove_vado_uguale_dove_vieni(V1, V2) :-
	proviene(V1, BraccioV1),
	proviene(V2, BraccioV2),
	transita(V1, _, BraccioV2),
	transita(V2, _, BraccioV1).
