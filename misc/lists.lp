true("true").
false("false").

el("a").
el("b").
el("c").

mylist("(a, b)").

test_in(E,L) :- el(E), list(L), true(@in_(E,L)).
test_cup("(a,b)","(b,c)",@cup_("(a,b)","(b,c)")).
test_cap("(a,b)","(b,c)",@cap_("(a,b)","(b,c)")).
test_setm("(a,b)","(b,c)",@setm_("(a,b)","(b,c)")).

list(@order(L)) :- mylist(L).

list(@insert_(E,L)) :- list(L), el(E), false(@in_(E,L)).