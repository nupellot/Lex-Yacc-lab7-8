%Start A B C D

%%

<A,C>1 BEGIN D;

<A,C>0 BEGIN A;

<B,D>0 BEGIN C;

<B,D>1 BEGIN B;

0 BEGIN A;

1 BEGIN B;

<C,D>[\s\t\n] printf("True\n"); BEGIN 0;

<A,B,C,D>[^01\n\s\t].*[\n\s\t] |

[^01\n\s\t].*[\n\s\t] |

[\n\s\t] printf("False\n"); BEGIN 0;
