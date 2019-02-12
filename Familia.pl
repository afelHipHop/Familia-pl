padrede('Jose','Andres').
padrede('Stella','Andres').
padrede('Miriam','Jose').
padrede('Ana','Stella').
padrede('Miriam','Daniel').
padrede('Antonio','Stella').
padrede('Daniel','Valentina').
padrede('Ana','Miguel').
padrede('Ana','Javier').
padrede('Antonio','Miguel').
padrede('Ana','Cachaco').
padrede('Antonio','Cachaco').
padrede('Javier','Vanesa').
padrede('Ines','Vanesa').
padrede('Javier','Johana').
padrede('Ines','Johana').
padrede('Javier','Heyner').
padrede('Ines','Heyner').
padrede('Cachaco','Laura').
padrede('Jimena','Laura').
padrede('Cachaco','Paula').
padrede('Jimena','Paula').
padrede('Antonio','Javier').




hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
escasado(A,C) :- hijode(B,A), hijode(B,C),C\==A.
escasado(A) :- hijode(B,A), padrede(C,B), C\==A.
esfeliz(A) :- not(escasado(A)).
tiode(A,B) :- hermanode(A,C), padrede(C,B).
primo(A,B) :- padrede(C,A),tiode(C,B).
sobrinode(A,B) :-  tiode(B,A).
nietode(A,B) :- abuelode(B,A).
