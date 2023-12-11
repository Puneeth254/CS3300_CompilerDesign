%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void yyerror(char*);
int yylex(void);

int flag = 0;

struct macro{
   char* id;
   char** args;
   int num;
   char* stmt;
   struct macro* next;
};

struct macro* head = NULL;
struct macro* curr = NULL;

char* reduce(char* fun, char* args){
   int checks = 0;
   struct macro* check = head;
   while(check != NULL){
      if(strcmp(check->id, fun) == 0){
         checks = 1;
         break;
      }
      check = check->next;
   }
   if(checks == 0){
      flag = 1;
   }
   char* values[1000];
   int ind = 0;
   char *t;
   //printf("%s\n", args);
   t = strtok(args, ",");
   while(t != NULL)
   {
      values[ind] = t;
      ind++;
      t = strtok(NULL, ",");
   }
   
   //printf("%d\n", ind);
   struct macro* temp = head;
   char* ans = malloc(1000*sizeof(char*));
   strcpy(ans, "");
   while(temp != NULL){
      if(strcmp(temp->id, fun) == 0){
         char *t;
         if(ind != temp->num){
            flag = 1;
            break;
         }
         char* copy = strdup(temp->stmt);
         t = strtok(temp->stmt, " \n");
         while(t != NULL)
         {
            //printf("%s\n", t);
            int check = 0;
            for(int i=0; i < temp->num; i++){
               //printf("%s\n", temp->args[i]);
               if(strcmp(temp->args[i], t) == 0){
                  //printf("%s\n", values[i]);
                  strcat(ans, " ");
                  strcat(ans, values[i]);
                  check = 1;
                  break;
               }
            }
            if(check == 0){
               strcat(ans, " ");
               strcat(ans, t);
            }
            t = strtok(NULL, " \n");
         }
         temp->stmt = strdup(copy);
      }
      temp = temp->next;
   }
   return ans;
}
%}

%union{
   int num;
   char* str;
}

%token NUMBER
%token ID
%token ADD SUB MUL DIV LEFT RIGHT PRINT EQ IF CUR_LEFT CUR_RIGHT SQ_LEFT SQ_RIGHT
%token COMMA ELSE DO WHILE BOOL INT AND OR NEQ LEQ HASH
%token CLASS EXTENDS PUBLIC STATIC VOID MAIN STR RETURN DOT LENGTH T F THIS NEW NOT DEFINE
%token EOL

%nonassoc THEN
%nonassoc ELSE
%nonassoc DONE
%nonassoc AND OR NEQ LEQ ADD SUB MUL DIV DOT SQ_LEFT

%type <str> NUMBER priexp T F THIS NEW
%type <str> ID BOOL INT EOL
%type <str> var var1 var2 exp NOT exp1 DOT statement statement1
%type <str> PRINT IF ELSE DO WHILE id1 DEFINE HASH
%type <str> CLASS EXTENDS PUBLIC STATIC VOID MAIN STR RETURN
%type <str> method method1 mainclass typedecl typedecl1 macrodef macrodef1
%type <str> LEFT RIGHT CUR_LEFT CUR_RIGHT SQ_LEFT SQ_RIGHT
%type <str> AND OR NEQ LEQ ADD SUB MUL DIV EQ COMMA
%%

goal: macrodef1 mainclass typedecl1 {if(!flag){printf("%s\n%s\n", $2, $3);}else{printf("// Failed to parse macrojava code.");}}
|macrodef1 mainclass {if(!flag){printf("%s\n", $2);}else{printf("// Failed to parse macrojava code.");}}
|mainclass typedecl1 {if(!flag){printf("%s\n%s\n", $1, $2);}else{printf("// Failed to parse macrojava code.");}}
|mainclass {
   if(!flag){printf("%s\n", $1);}
   else{printf("// Failed to parse macrojava code.");}
}
;


var: INT SQ_LEFT SQ_RIGHT {
   char* s = malloc(sizeof(char)*(7+strlen($1)+strlen($2)+strlen($3)+4));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,$2); strcat(s, " ");strcat(s,$3); strcat(s, " ");
   $$=s;
}
|BOOL {$$ = $1;}
|INT {$$ = $1;}
|ID {$$ = $1;}
;


var1: var ID EOL {
   char* s = malloc(sizeof(char)*(7+strlen($1)+strlen($2)+strlen($3)+4));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,$2); strcat(s, " ");strcat(s,$3); strcat(s, " ");
   $$=s;
}
|var1 var ID EOL {
   char* s = malloc(sizeof(char)*(7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+5));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");strcat(s,$3); strcat(s, " ");strcat(s,$4); strcat(s, " ");
   $$=s;
}
;

var2: var ID {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+4));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,$2); strcat(s, " ");
   $$=s;
}
|var2 COMMA var ID {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+4));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");strcat(s,$3); strcat(s, " ");strcat(s,$4); strcat(s, " ");
   $$=s;
}
;


priexp: ID {$$ = $1;}
|NUMBER {$$ = $1;}
|ADD NUMBER {
   char* s = malloc(sizeof(char)*(strlen($2)+5));
   strcpy(s, " + ");
   strcat(s, $2);
   $$=s;
}
|SUB NUMBER {
   char* s = malloc(sizeof(char)*(strlen($2)+5));
   strcpy(s, " - ");
   strcat(s, $2);
   $$=s;
}
|T {$$ = " true ";}
|F {$$ = " false ";}
|THIS {$$ = " this ";}
|NEW INT SQ_LEFT exp SQ_RIGHT {
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+6));
      strcpy(s, $1); strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3); strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5); strcat(s, " ");
      $$=s;
}
|NEW ID LEFT RIGHT {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+4));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4); strcat(s, " ");
   $$=s;
}
|NOT exp {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+3));
   strcpy(s, $1); strcat(s, " ");
   strcat(s, $2); strcat(s, " ");
   $$=s;
}
|LEFT exp RIGHT {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,$2); strcat(s, " ");strcat(s,$3); strcat(s, " ");
   $$=s;
}
;


exp: priexp AND priexp {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"&& ");strcat(s,$3);
   $$=s;
}
|priexp OR priexp
{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"|| ");strcat(s,$3);
   $$=s;
}
|priexp NEQ priexp{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"!= ");strcat(s,$3);
   $$=s;
}
|priexp LEQ priexp{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"<= ");strcat(s,$3);
   $$=s;
}
|priexp ADD priexp{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"+ ");strcat(s,$3);
   $$=s;
}
|priexp SUB priexp{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"- ");strcat(s,$3);
   $$=s;
}
|priexp MUL priexp{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"* ");strcat(s,$3);
   $$=s;
}
|priexp DIV priexp{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,"/ ");strcat(s,$3);
   $$=s;
}
|priexp SQ_LEFT priexp SQ_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+4));
   strcpy(s, $1);
   strcat(s, " ");
   strcat(s,$2); strcat(s, " ");strcat(s,$3); strcat(s, " ");strcat(s, $4); strcat(s, " ");
   $$=s;
}
|priexp DOT LENGTH{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+6+3));
   strcpy(s, $1);
   strcat(s," .");strcat(s,"length ");
   $$=s;
}
|priexp %prec DONE{ 
   $$=$1;
}
|priexp DOT ID LEFT exp1 RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+6));
   strcpy(s, $1); strcat(s, " ");
   strcat(s,$2);strcat(s, " ");strcat(s,$3); strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5); strcat(s, " ");strcat(s, $6); strcat(s, " ");
   $$=s;
}
|priexp DOT ID LEFT RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+6));
   strcpy(s, $1); strcat(s, " ");
   strcat(s,$2);strcat(s, " ");strcat(s,$3); strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5); strcat(s, " ");
   $$=s;
}
|ID LEFT RIGHT{
      int checks = 0;
      struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $1) == 0){
            checks = 1;
            break;
         }
         check = check->next;
      }
      if(checks == 0){
         flag = 1;
      }
      struct macro* temp = head;
      char* ans = malloc(1000*sizeof(char*));
      strcpy(ans, "( ");
      while(temp != NULL){
         if(strcmp(temp->id, $1) == 0){
            if(temp->num != 0){
               //printf("%d\n", temp->num);
               flag = 1;
               break;
            }
            char *t;
            char* copy = strdup(temp->stmt);
            t = strtok(temp->stmt, " ");
            while(t != NULL)
            {
               strcat(ans, t);
               strcat(ans, " ");
               t = strtok(NULL, " ");
            }
            temp->stmt = copy;
            break;
         }
         temp = temp->next;
      }
      strcat(ans, " )");
      $$ = ans;
}
|ID LEFT exp1 RIGHT{
      char* ans = reduce($1, $3);
      char* ans1 = malloc(sizeof(char)*(5+strlen(ans)));
      strcat(ans1, "( ");
      strcat(ans1, ans);
      strcat(ans1, " )");
      $$ = ans1;
}
;

exp1: exp{
   $$ = $1;
}
|exp1 COMMA exp {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, ", ");
   strcat(s,$3);
   $$=s;
}
;

statement: CUR_LEFT CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+3));
      strcpy(s, $1);
      strcat(s, " ");
      strcat(s,$2);strcat(s, " ");
      $$=s;
}
|CUR_LEFT statement1 CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+3));
      strcpy(s, $1);
      strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");
      $$=s;
}
|PRINT LEFT exp RIGHT EOL{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+6));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");
      $$=s;
}
|ID EQ exp EOL{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+6));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");
      $$=s;
}
|ID SQ_LEFT exp SQ_RIGHT EQ exp EOL{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+7));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");strcat(s, $6);strcat(s, " ");strcat(s, $7);strcat(s, " ");
      $$=s;
}
|IF LEFT exp RIGHT statement %prec THEN {
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+6));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");
      $$=s;
}
|IF LEFT exp RIGHT statement ELSE statement{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+7));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, "\n");strcat(s, $6);strcat(s, " ");strcat(s, $7);strcat(s, " ");
      $$=s;
}
|DO statement WHILE LEFT exp RIGHT EOL{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+7));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");strcat(s, $6);strcat(s, " ");strcat(s, $7);strcat(s, " ");
      $$=s;
}
|WHILE LEFT exp RIGHT statement{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+6));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");
      $$=s;
}
|ID LEFT RIGHT EOL{
      int checks = 0;
      struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $1) == 0){
            checks = 1;
            break;
         }
         check = check->next;
      }
      if(checks == 0){
         flag = 1;
      }
      struct macro* temp = head;
      char* ans = malloc(1000*sizeof(char*));
      strcpy(ans, "");
      while(temp != NULL){
         if(strcmp(temp->id, $1) == 0){
            if(temp->num != 0){
               flag = 1;
               break;
            }
            char *t;
            char* copy = strdup(temp->stmt);
            t = strtok(temp->stmt, " ");
            while(t != NULL)
            {
               strcat(ans, t);
               strcat(ans, " ");
               t = strtok(NULL, " ");
            }
            temp->stmt = copy;
            break;
         }
         temp = temp->next;
      }
      $$ = ans;
}
|ID LEFT exp1 RIGHT EOL{
      $$ = reduce($1, $3);
}
;

statement1: statement {$$ = $1;}
|statement1 statement {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+3));
   strcpy(s, $1);
   strcat(s, "\n");
   strcat(s,$2);strcat(s, " ");
   $$=s;
}
;

id1: ID {
   $$ = $1;
}
|id1 COMMA ID {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+2+strlen($3)+3));
   strcpy(s, $1);
   strcat(s, ", ");
   strcat(s,$3);strcat(s, " ");
   $$=s;
}
;

method: PUBLIC var ID LEFT RIGHT CUR_LEFT RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, "\n");
   strcat(s,$7);strcat(s, " ");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, "\n");
   $$=s;
}
|PUBLIC var ID LEFT RIGHT CUR_LEFT statement1 RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, "\n");
   strcat(s,$7);strcat(s, " ");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, "\n");
   $$=s;
}
|PUBLIC var ID LEFT RIGHT CUR_LEFT var1 RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, " ");
   strcat(s,$7);strcat(s, "\n");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, "\n");
   $$=s;
}
|PUBLIC var ID LEFT RIGHT CUR_LEFT var1 statement1 RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+strlen($12)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, "\n");
   strcat(s,$7);strcat(s, " ");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, " ");
   strcat(s,$12);strcat(s, "\n");
   $$=s;
}
|PUBLIC var ID LEFT var2 RIGHT CUR_LEFT RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, " ");
   strcat(s,$7);strcat(s, "\n");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, "\n");
   $$=s;
}
|PUBLIC var ID LEFT var2 RIGHT CUR_LEFT statement1 RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+strlen($12)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, " ");
   strcat(s,$7);strcat(s, "\n");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, " ");
   strcat(s,$12);strcat(s, "\n");
   $$=s;
}
|PUBLIC var ID LEFT var2 RIGHT CUR_LEFT var1 RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+strlen($12)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, " ");
   strcat(s,$7);strcat(s, "\n");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, " ");
   strcat(s,$12);strcat(s, "\n");
   $$=s;
}
|PUBLIC var ID LEFT var2 RIGHT CUR_LEFT var1 statement1 RETURN exp EOL CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+strlen($12)+strlen($13)+16));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, " ");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, " ");
   strcat(s,$7);strcat(s, "\n");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, " ");
   strcat(s,$12);strcat(s, " ");
   strcat(s,$13);strcat(s, "\n");
   $$=s;
}
;

method1: method {
   $$ = $1;
}
|method1 method {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+2));
   strcpy(s, $1);strcat(s, "\n");
   strcat(s,$2);strcat(s, " ");
   $$=s;
}
;
mainclass: CLASS ID CUR_LEFT PUBLIC STATIC VOID MAIN LEFT STR SQ_LEFT SQ_RIGHT ID RIGHT CUR_LEFT PRINT LEFT exp RIGHT EOL CUR_RIGHT CUR_RIGHT{
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+strlen($9)+strlen($10)+strlen($11)+strlen($12)+strlen($13)+strlen($14)+strlen($15)+strlen($16)+strlen($17)+strlen($18)+strlen($19)+strlen($20)+strlen($21)+25));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   strcat(s,$3);strcat(s, "\n");
   strcat(s,$4);strcat(s, " ");
   strcat(s,$5);strcat(s, " ");
   strcat(s,$6);strcat(s, " ");
   strcat(s,$7);strcat(s, " ");
   strcat(s,$8);strcat(s, " ");
   strcat(s,$9);strcat(s, " ");
   strcat(s,$10);strcat(s, " ");
   strcat(s,$11);strcat(s, " ");
   strcat(s,$12);strcat(s, " ");
   strcat(s,$13);strcat(s, " ");
   strcat(s,$14);strcat(s, "\n");
   strcat(s,$15);strcat(s, " ");
   strcat(s,$16);strcat(s, " ");
   strcat(s,$17);strcat(s, " ");
   strcat(s,$18);strcat(s, " ");
   strcat(s,$19);strcat(s, "\n");
   strcat(s,$20);strcat(s, "\n");
   strcat(s,$21);strcat(s, "\n");
   $$=s;
}
;


typedecl: CLASS ID CUR_LEFT method1 CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+7));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, "\n");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");
      $$=s;
}
|CLASS ID CUR_LEFT var1 method1 CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+7));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, "\n");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");strcat(s, $6);strcat(s, " ");
      $$=s;
}
|CLASS ID CUR_LEFT var1 CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+7));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, "\n");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, " ");
      $$=s;
}
|CLASS ID CUR_LEFT CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+7));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, "\n");strcat(s, $4);strcat(s, " ");
      $$=s;
}
|CLASS ID EXTENDS ID CUR_LEFT CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+8));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, "\n");strcat(s, $6);strcat(s, " ");
      $$=s;
}
|CLASS ID EXTENDS ID CUR_LEFT method1 CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+8));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, "\n");strcat(s, $6);strcat(s, " ");strcat(s, $7);strcat(s, " ");
      $$=s;
}
|CLASS ID EXTENDS ID CUR_LEFT var1 CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+8));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, "\n");strcat(s, $6);strcat(s, " ");strcat(s, $7);strcat(s, " ");
      $$=s;
}
|CLASS ID EXTENDS ID CUR_LEFT var1 method1 CUR_RIGHT{
      char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+strlen($3)+strlen($4)+strlen($5)+strlen($6)+strlen($7)+strlen($8)+8));
      strcpy(s, $1);strcat(s, " ");
      strcat(s,$2);strcat(s, " ");strcat(s,$3);strcat(s, " ");strcat(s, $4);strcat(s, " ");strcat(s, $5);strcat(s, "\n");strcat(s, $6);strcat(s, " ");strcat(s, $7);strcat(s, " ");strcat(s, $8);strcat(s, " ");
      $$=s;
}
;

typedecl1: typedecl {$$ = $1;}
|typedecl1 typedecl {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+2));
   strcpy(s, $1);strcat(s, " ");
   strcat(s,$2);strcat(s, " ");
   $$=s;
}
;

macrodef: HASH DEFINE ID LEFT RIGHT LEFT exp RIGHT{
   struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $3) == 0){
            flag = 1;
            break;
         }
         check = check->next;
      }
      struct macro* temp = (struct macro*)malloc(sizeof(struct macro));
      temp->id = malloc(sizeof(char)*(strlen($3)+1));
      //temp->args = malloc(1000*sizeof(char*));
      temp->stmt = malloc(sizeof(char)*(strlen($7)+1));
      strcpy(temp->stmt, $7);
      strcpy(temp->id, $3);
      int ind = 0;
      //temp->num = (int*)malloc(ind * sizeof(int));
      temp->num = ind;
      if(head == NULL){
         head = temp;
         curr = temp;
      }
      else{
         curr->next = temp;
         curr = temp;
      }
      //printf("%s\n%s\n%d", temp->id, temp->stmt, temp->num);
      $$ = "";
}
|HASH DEFINE ID LEFT id1 RIGHT LEFT exp RIGHT{
   struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $3) == 0){
            flag = 1;
            break;
         }
         check = check->next;
      }
      struct macro* temp = (struct macro*)malloc(sizeof(struct macro));
      temp->id = malloc(sizeof(char)*(strlen($3)+1));
      temp->args = malloc(1000*sizeof(char*));
      temp->stmt = malloc(sizeof(char)*(strlen($8)+1));
      strcpy(temp->stmt, $8);
      // char *t1;
      // char* copy = strdup(temp->stmt);
      // t1 = strtok(temp->stmt, " ");
      // while(t1 != NULL)
      // {
      //    strcat(ans, t1);
      //    t1 = strtok(NULL, " ");
      // }
      // temp->stmt = copy;
      strcpy(temp->id, $3);
      char* s = $5;
      char *t;
      t = strtok(s, ", ");
      int ind=0;
      while(t != NULL)
      {
         temp->args[ind] = t;
         ind++;
         t = strtok(NULL, ", ");
      }
      //temp->num = (int*)malloc(ind * sizeof(int));
      temp->num = ind;
      if(head == NULL){
         head = temp;
         curr = temp;
      }
      else{
         curr->next = temp;
         curr = temp;
      }
      //printf("%s\n%s\n%d", curr->id, curr->stmt, curr->num);
      $$ = "";
}
|HASH DEFINE ID LEFT RIGHT CUR_LEFT CUR_RIGHT{
      struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $3) == 0){
            flag = 1;
            break;
         }
         check = check->next;
      }
      struct macro* temp = (struct macro*)malloc(sizeof(struct macro));
      temp->id = malloc(sizeof(char)*(strlen($3)+1));
      temp->args = malloc(1000*sizeof(char*));
      temp->stmt = malloc(sizeof(char)*(strlen($7)+1));
      strcpy(temp->stmt, "");
      strcpy(temp->id, $3);
      int ind=0;
      //temp->num = (int*)malloc(ind * sizeof(int));
      temp->num = ind;
      if(head == NULL){
         head = temp;
         curr = temp;
      }
      else{
         curr->next = temp;
         curr = temp;
      }
      //printf("%s\n%s\n%d", curr->id, curr->stmt, curr->num);
      $$ = "";
}
|HASH DEFINE ID LEFT RIGHT CUR_LEFT statement1 CUR_RIGHT{
   struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $3) == 0){
            flag = 1;
            break;
         }
         check = check->next;
      }
      struct macro* temp = (struct macro*)malloc(sizeof(struct macro));
      temp->id = malloc(sizeof(char)*(strlen($3)+1));
      temp->args = malloc(1000*sizeof(char*));
      temp->stmt = malloc(sizeof(char)*(strlen($7)+1));
      strcpy(temp->stmt, $7);
      strcpy(temp->id, $3);
      int ind=0;
      //temp->num = (int*)malloc(ind * sizeof(int));
      temp->num = ind;
      if(head == NULL){
         head = temp;
         curr = temp;
      }
      else{
         curr->next = temp;
         curr = temp;
      }
      //printf("%s\n%s\n%d", curr->id, curr->stmt, curr->num);
      $$ = "";
}
|HASH DEFINE ID LEFT id1 RIGHT CUR_LEFT CUR_RIGHT{
   struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $3) == 0){
            flag = 1;
            break;
         }
         check = check->next;
      }
      struct macro* temp = (struct macro*)malloc(sizeof(struct macro));
      temp->id = malloc(sizeof(char)*(strlen($3)+1));
      temp->args = malloc(1000*sizeof(char*));
      temp->stmt = malloc(sizeof(char)*(strlen($8)+1));
      strcpy(temp->stmt, "");
      strcpy(temp->id, $3);
      char* s = $5;
      char *t;
      t = strtok(s, ", ");
      int ind=0;
      while(t != NULL)
      {
         temp->args[ind] = t;
         ind++;
         t = strtok(NULL, ", ");
      }
      //temp->num = (int*)malloc(ind * sizeof(int));
      temp->num = ind;
      if(head == NULL){
         head = temp;
         curr = temp;
      }
      else{
         curr->next = temp;
         curr = temp;
      }
      //printf("%s\n%s\n%d", curr->id, curr->stmt, curr->num);
      $$ = "";
}
|HASH DEFINE ID LEFT id1 RIGHT CUR_LEFT statement1 CUR_RIGHT{
   struct macro* check = head;
      while(check != NULL){
         if(strcmp(check->id, $3) == 0){
            flag = 1;
            break;
         }
         check = check->next;
      }
      struct macro* temp = (struct macro*)malloc(sizeof(struct macro));
      temp->id = malloc(sizeof(char)*(strlen($3)+1));
      temp->args = malloc(1000*sizeof(char*));
      temp->stmt = malloc(sizeof(char)*(strlen($8)+1));
      strcpy(temp->stmt, $8);
      strcpy(temp->id, $3);
      char* s = $5;
      char *t;
      t = strtok(s, ", ");
      int ind=0;
      while(t != NULL)
      {
         temp->args[ind] = t;
         ind++;
         t = strtok(NULL, ", ");
      }
      //temp->num = (int*)malloc(ind * sizeof(int));
      temp->num = ind;
      if(head == NULL){
         head = temp;
         curr = temp;
      }
      else{
         curr->next = temp;
         curr = temp;
      }
      //printf("%s\n%s\n%d", curr->id, curr->stmt, curr->num);
      $$ = "";
}
;


macrodef1: macrodef {$$ = $1;}
|macrodef1 macrodef {
   char* s = malloc(sizeof(char)*(1+7+strlen($1)+strlen($2)+2));
   strcpy(s, $1);strcat(s, "\n");
   strcat(s,$2);strcat(s, " ");
   $$=s;
}
;

%%
int main(int argc, char **argv)
{
yyparse();
return 0;
}
void yyerror(char* s)
{
printf("// Failed to parse macrojava code.");
}
