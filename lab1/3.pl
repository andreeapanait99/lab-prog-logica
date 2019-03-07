/** GOT riddle 
Varys - "Power is a curious thing, my lord. Are you fond of riddles?" 
Tyrion - "Why? Am I about to hear one?" 
Varys - "Three great men sit in a room, a king, a priest and the rich man. 
         Between them stands a common sellsword. 
         Each great man bids the sellsword kill the other two. 
         Who lives? Who dies?" 
Tyrion - "Depends on the sellsword" 
*/

char(king).
char(priest).
char(richMan).

choice(god, priest). 
choice(authority, king).
choice(money, richMan).

is_killed(C,X,Y) :- choice(C, Z), char(X), char(Y), X\=Z, Y\=Z, X\=Y.

/** <examples>
?- is_killed(god,X,Y).
?- is_killed(money,X,Y).
?- is_killed(authority,X,Y).
*/