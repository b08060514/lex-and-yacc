%s MAGIC

%%
<MAGIC>exit.*        { printf("Exit from magic status.\n"); BEGIN 0; }
<MAGIC>.+	{ printf("Magic:"); ECHO; }
magic		BEGIN MAGIC;
.+		ECHO;
%%

main()
{
	yylex();
}
