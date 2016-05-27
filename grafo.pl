:- module(grafo, []).

:- use_module(library(lists)).
:- use_module(library(ugraphs)).

unisci_grafi(Lista, Grafo) :-
	acc_unisci_grafi(Lista, [], Grafo).

acc_unisci_grafi([H|T], Acc, Grafo) :-
	ugraph_union(H, Acc, NGrafo),
	acc_unisci_grafi(T, NGrafo, Grafo).

acc_unisci_grafi([], G, G).


crea_grafo(Nodo, Lista, Grafo) :-
	trova_archi(Nodo, Lista, [], Archi),
	vertices_edges_to_ugraph([], Archi, Grafo).

trova_archi(_, [], A, A).

trova_archi(Nodo, [H|T], Acc, Archi) :-
	crea_arco(Nodo, H, Arco),
	trova_archi(Nodo, T, [Arco|Acc], Archi).

crea_grafo(Nodo, [H|T], Archi, Grafo) :-
%	crea_arco(Nodo, H, Arco),
	crea_grafo(Nodo, T, [Nodo-H|Archi], Grafo).

ordina(Grafo, Ordine) :-
	top_sort(Grafo, Ordine).

crea_arco(Nodo1, Nodo2, Arco) :-
	term_to_atom(Nodo1, Atomo1),
	term_to_atom(Nodo2, Atomo2),
	Tratt = '-',
	atom_concat(Tratt, Atomo2, TA),
	atom_concat(Atomo1, TA, AtomArco),
	atom_to_term(AtomArco, Arco, _).
