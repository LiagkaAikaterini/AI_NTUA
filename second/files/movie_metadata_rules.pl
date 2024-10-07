five_common_genre(Movie_1,Movie_2):-
  genre(Movie_1,X),
  genre(Movie_2,X),
  genre(Movie_1,Y),
  genre(Movie_2,Y),
  genre(Movie_1,Z),
  genre(Movie_2,Z),
  genre(Movie_1,W),
  genre(Movie_2,W),
  genre(Movie_1,R),
  genre(Movie_2,R),
  Movie_1 \= Movie_2,
  X \= Y,
  X \= Z,
  X \= W,
  X \= R,
  Y \= Z,
  Y \= W,
  Y \= R,
  Z \= W,
  Z \= R,
  W \= R.

three_common_genre(Movie_1,Movie_2):-
  genre(Movie_1,X),
  genre(Movie_2,X),
  genre(Movie_1,Y),
  genre(Movie_2,Y),
  genre(Movie_1,Z),
  genre(Movie_2,Z),
  Movie_1 \= Movie_2,
  X \= Y,
  X \= Z,
  Y \= Z.

one_common_genre(Movie_1,Movie_2):-
  genre(Movie_1,X),
  genre(Movie_2,X),
  Movie_1 \= Movie_2.

four_common_genre(Movie_1,Movie_2):-
  genre(Movie_1,X),
  genre(Movie_2,X),
  genre(Movie_1,Y),
  genre(Movie_2,Y),
  genre(Movie_1,Z),
  genre(Movie_2,Z),
  genre(Movie_1,W),
  genre(Movie_2,W),
  Movie_1 \= Movie_2,
  X \= Y,
  X \= Z,
  X \= W,
  Y \= Z,
  Y \= W,
  Z \= W.

two_common_genre(Movie_1,Movie_2):-
  genre(Movie_1,X),
  genre(Movie_2,X),
  genre(Movie_1,Y),
  genre(Movie_2,Y),
  Movie_1 \= Movie_2,
  X \= Y.

common_director(Movie_1,Movie_2):-
  director_name(Movie_1,X),
  director_name(Movie_2,X),
  Movie_1 \= Movie_2.

five_same_plot(Movie_1,Movie_2):-
  plot_keyword(Movie_1,X),
  plot_keyword(Movie_2,X),
  plot_keyword(Movie_1,Y),
  plot_keyword(Movie_2,Y),
  plot_keyword(Movie_1,Z),
  plot_keyword(Movie_2,Z),
  plot_keyword(Movie_1,W),
  plot_keyword(Movie_2,W),
  plot_keyword(Movie_1,R),
  plot_keyword(Movie_2,R),
  Movie_1 \= Movie_2,
  X \= Y,
  X \= Z,
  X \= W,
  X \= R,
  Y \= Z,
  Y \= W,
  Y \= R,
  Z \= W,
  Z \= R,
  W \= R.

three_same_plot(Movie_1,Movie_2):-
  plot_keyword(Movie_1,X),
  plot_keyword(Movie_2,X),
  plot_keyword(Movie_1,Y),
  plot_keyword(Movie_2,Y),
  plot_keyword(Movie_1,Z),
  plot_keyword(Movie_2,Z),
  Movie_1 \= Movie_2,
  X \= Y,
  X \= Z,
  Y \= Z.

four_same_plot(Movie_1,Movie_2):-
  plot_keyword(Movie_1,X),
  plot_keyword(Movie_2,X),
  plot_keyword(Movie_1,Y),
  plot_keyword(Movie_2,Y),
  plot_keyword(Movie_1,Z),
  plot_keyword(Movie_2,Z),
  plot_keyword(Movie_1,W),
  plot_keyword(Movie_2,W),
  Movie_1 \= Movie_2,
  X \= Y,
  X \= Z,
  X \= W,
  Y \= Z,
  Y \= W,
  Z \= W.

two_same_plot(Movie_1,Movie_2):-
  plot_keyword(Movie_1,X),
  plot_keyword(Movie_2,X),
  plot_keyword(Movie_1,Y),
  plot_keyword(Movie_2,Y),
  Movie_1 \= Movie_2,
  X \= Y.

one_same_plot(Movie_1,Movie_2):-
  plot_keyword(Movie_1,X),
  plot_keyword(Movie_2,X),
  Movie_1 \= Movie_2.


same_actors(Movie_1,Movie_2):-
  actor_1_name(Movie_1,X),actor_1_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_2_name(Movie_2,Y),actor_3_name(Movie_1,Z),actor_3_name(Movie_2,Z),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_2_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_1_name(Movie_2,Y),actor_3_name(Movie_1,Z),actor_3_name(Movie_2,Z),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_3_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_2_name(Movie_2,Y),actor_3_name(Movie_1,Z),actor_1_name(Movie_2,Z),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_1_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_3_name(Movie_2,Y),actor_3_name(Movie_1,Z),actor_2_name(Movie_2,Z),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_2_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_3_name(Movie_2,Y),actor_3_name(Movie_1,Z),actor_1_name(Movie_2,Z),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_3_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_1_name(Movie_2,Y),actor_3_name(Movie_1,Z),actor_2_name(Movie_2,Z),Movie_1 \= Movie_2.

some_same_actors(Movie_1,Movie_2):-
  actor_1_name(Movie_1,X),actor_1_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_2_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_2_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_1_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_2_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_3_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_3_name(Movie_2,X),actor_3_name(Movie_1,Y),actor_2_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_3_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_1_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_1_name(Movie_2,X),actor_2_name(Movie_1,Y),actor_3_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_1_name(Movie_2,X),actor_3_name(Movie_1,Y),actor_2_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_2_name(Movie_2,X),actor_3_name(Movie_1,Y),actor_1_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_2_name(Movie_2,X),actor_3_name(Movie_1,Y),actor_3_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_2_name(Movie_2,X),actor_1_name(Movie_1,Y),actor_3_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_3_name(Movie_2,X),actor_3_name(Movie_1,Y),actor_2_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_3_name(Movie_2,X),actor_3_name(Movie_1,Y),actor_1_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_1_name(Movie_2,X),actor_3_name(Movie_1,Y),actor_3_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_1_name(Movie_2,X),actor_1_name(Movie_1,Y),actor_2_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_2_name(Movie_2,X),actor_1_name(Movie_1,Y),actor_1_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_3_name(Movie_2,X),actor_1_name(Movie_1,Y),actor_2_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_3_name(Movie_2,X),actor_1_name(Movie_1,Y),actor_1_name(Movie_2,Y),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_1_name(Movie_2,X),actor_1_name(Movie_1,Y),actor_3_name(Movie_2,Y),Movie_1 \= Movie_2.
  

one_same_actor(Movie_1,Movie_2):-
  actor_1_name(Movie_1,X),actor_1_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_2_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_1_name(Movie_1,X),actor_3_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_1_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_2_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_2_name(Movie_1,X),actor_3_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_3_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_2_name(Movie_2,X),Movie_1 \= Movie_2;
  actor_3_name(Movie_1,X),actor_3_name(Movie_2,X),Movie_1 \= Movie_2.


same_language(Movie_1,Movie_2):-
  language(Movie_1,X),
  language(Movie_2,X),
  Movie_1 \= Movie_2.

find_black(Movie_1,Movie_2):-
  plot_keyword(Movie_1,'black and white'),
  plot_keyword(Movie_2,'black and white'), 
  Movie_1 \= Movie_2.
     
is_black_and_white(Movie):-
  plot_keyword(Movie,'black and white').


find_color(Movie_1,Movie_2):- 
  plot_keyword(Movie_2, Y), ( is_black_and_white(Movie_2) -> false ;
  Movie_1 \= Movie_2
  ).
  
black_and_white(Movie_1,Movie_2):- (
    is_black_and_white(Movie_1) -> find_black(Movie_1,Movie_2);
    find_color(Movie_1,Movie_2)
    ).


one_common_production_studio(Movie_1,Movie_2):-
  production_company(Movie_1,X,Y),
  production_company(Movie_2,X,Y),
  Movie_1 \= Movie_2.

two_common_production_studio(Movie_1,Movie_2):-
  production_company(Movie_1,X,Y),
  production_company(Movie_2,X,Y),
  production_company(Movie_1,Z,W),
  production_company(Movie_2,Z,W),
  X \= Z,
  Y \= W,
  Movie_1 \= Movie_2.

three_common_production_studio(Movie_1,Movie_2):-
  production_company(Movie_1,X,Y),
  production_company(Movie_2,X,Y),
  production_company(Movie_1,Z,W),
  production_company(Movie_2,Z,W),
  production_company(Movie_1,Q,R),
  production_company(Movie_2,Q,R),
  X \= Z,
  Z \= Q,
  X \= Q,
  Y \= W,
  Y \= R,
  W \= R,
  Movie_1 \= Movie_2.


one_common_production_country(Movie_1,Movie_2):-
  production_country(Movie_1,X,Y),
  production_country(Movie_2,X,Y),
  Movie_1 \= Movie_2.

two_common_production_country(Movie_1,Movie_2):-
  production_country(Movie_1,X,Y),
  production_country(Movie_2,X,Y),
  production_country(Movie_1,Z,W),
  production_country(Movie_2,Z,W),
  X \= Z,
  Y \= W,
  Movie_1 \= Movie_2.

three_common_production_country(Movie_1,Movie_2):-
  production_country(Movie_1,X,Y),
  production_country(Movie_2,X,Y),
  production_country(Movie_1,Z,W),
  production_country(Movie_2,Z,W),
  production_country(Movie_1,Q,R),
  production_country(Movie_2,Q,R),
  X \= Z,
  X \= Q,
  Z \= Q,
  Y \= W,
  Y \= R,
  W \= R,
  Movie_1 \= Movie_2.


common_decade(Movie_1,Movie_2):-
  title_year(Movie_1,X),
  title_year(Movie_2,Y),
  Movie_1 \= Movie_2,
  X1 is round(X),
  Y1 is round(Y),
  Z is div(X1,10),
  W is div(Y1,10),
  Z =:= W.

very_common_budget(Movie_1,Movie_2):-
  budget(Movie_1,Budget_1),
  budget(Movie_2,Budget_2),
  Movie_1 \= Movie_2,
  Dif is Budget_1-Budget_2,
  Diff_abs is abs(Dif),
  Diff_abs =< 1000000.

partly_common_budget(Movie_1,Movie_2):-
  budget(Movie_1,Budget_1),
  budget(Movie_2,Budget_2),
  Movie_1 \= Movie_2,
  Dif is Budget_1-Budget_2,
  Diff_abs is abs(Dif),
  Diff_abs =< 50000000.


very_common_popularity(Movie_1,Movie_2):-
  popularity(Movie_1,X),
  popularity(Movie_2,Y),
  Movie_1 \= Movie_2,
  Dif is X-Y,
  Diff_abs is abs(Dif),
  Diff_abs =< 10.

partly_common_popularity(Movie_1,Movie_2):-
  popularity(Movie_1,X),
  popularity(Movie_2,Y),
  Movie_1 \= Movie_2,
  Dif is X-Y,
  Diff_abs is abs(Dif),
  Diff_abs =< 30.

very_common_gross(Movie_1,Movie_2):-
  gross(Movie_1,Gross_1),
  gross(Movie_2,Gross_2),
  Movie_1 \= Movie_2,
  Dif is Gross_1-Gross_2,
  Diff_abs is abs(Dif),
  Diff_abs =< 1000000.

partly_common_gross(Movie_1,Movie_2):-
  gross(Movie_1,Gross_1),
  gross(Movie_2,Gross_2),
  Movie_1 \= Movie_2,
  Dif is Gross_1-Gross_2,
  Diff_abs is abs(Dif),
  Diff_abs =< 50000000.

common_duration(Movie_1,Movie_2):-
  duration(Movie_1,X),
  duration(Movie_2,Y),
  Movie_1 \= Movie_2,
  Dif is X-Y,
  Diff_abs is abs(Dif),
  Diff_abs =< 30.

five_common_spoken_language(Movie_1,Movie_2):-
  spoken_language(Movie_1,X1,X2),
  spoken_language(Movie_2,X1,X2),
  spoken_language(Movie_1,Y1,Y2),
  spoken_language(Movie_2,Y1,Y2),
  spoken_language(Movie_1,Z1,Z2),
  spoken_language(Movie_2,Z1,Z2),
  spoken_language(Movie_1,W1,W2),
  spoken_language(Movie_2,W1,W2),
  spoken_language(Movie_1,R1,R2),
  spoken_language(Movie_2,R1,R2),
  Movie_1 \= Movie_2,
  X1 \= Y1,
  X2 \= Y2,
  X1 \= Z1,
  X2 \= Z2,
  X1 \= W1,
  X2 \= W2,
  X1 \= R1,
  X2 \= R2,
  Y1 \= Z1,
  Y2 \= Z2,
  Y1 \= W1,
  Y2 \= W2,
  Y1 \= R1,
  Y2 \= R2,
  Z1 \= W1,
  Z2 \= W2,
  Z1 \= R1,
  Z2 \= R2,
  R1 \= W1,
  R2 \= W2.

four_common_spoken_language(Movie_1,Movie_2):-
  spoken_language(Movie_1,X1,X2),
  spoken_language(Movie_2,X1,X2),
  spoken_language(Movie_1,Y1,Y2),
  spoken_language(Movie_2,Y1,Y2),
  spoken_language(Movie_1,Z1,Z2),
  spoken_language(Movie_2,Z1,Z2),
  spoken_language(Movie_1,W1,W2),
  spoken_language(Movie_2,W1,W2),
  Movie_1 \= Movie_2,
  X1 \= Y1,
  X2 \= Y2,
  X1 \= Z1,
  X2 \= Z2,
  X1 \= W1,
  X2 \= W2,
  Y1 \= Z1,
  Y2 \= Z2,
  Y1 \= W1,
  Y2 \= W2,
  Z1 \= W1,
  Z2 \= W2.

three_common_spoken_language(Movie_1,Movie_2):-
  spoken_language(Movie_1,X1,X2),
  spoken_language(Movie_2,X1,X2),
  spoken_language(Movie_1,Y1,Y2),
  spoken_language(Movie_2,Y1,Y2),
  spoken_language(Movie_1,Z1,Z2),
  spoken_language(Movie_2,Z1,Z2),
  Movie_1 \= Movie_2,
  X1 \= Y1,
  X2 \= Y2,
  X1 \= Z1,
  X2 \= Z2,
  Y1 \= Z1,
  Y2 \= Z2.

two_common_spoken_language(Movie_1,Movie_2):-
  spoken_language(Movie_1,X1,X2),
  spoken_language(Movie_2,X1,X2),
  spoken_language(Movie_1,Y1,Y2),
  spoken_language(Movie_2,Y1,Y2),
  Movie_1 \= Movie_2,
  X1 \= Y1,
  X2 \= Y2.

one_common_spoken_language(Movie_1,Movie_2):-
  spoken_language(Movie_1,X1,X2),
  spoken_language(Movie_2,X1,X2),
  Movie_1 \= Movie_2.

very_common_vote_average(Movie_1,Movie_2):-
  vote_average(Movie_1,X),
  vote_average(Movie_2,Y),
  Movie_1 \= Movie_2,
  Dif is X-Y,
  Dif_abs is abs(Dif),
  Dif_abs =< 0.2.

partly_common_vote_average(Movie_1,Movie_2):-
  vote_average(Movie_1,X),
  vote_average(Movie_2,Y),
  Movie_1 \= Movie_2,
  Dif is X-Y,
  Dif_abs is abs(Dif),
  Dif_abs =< 0.5.

very_common_num_voted(Movie_1,Movie_2):-
  num_voted_users(Movie_1,X),
  num_voted_users(Movie_2,Y),
  Movie_1 \= Movie_2,
  Dif is X-Y,
  Dif_abs is abs(Dif),
  Dif_abs =< 500.  

partly_common_num_voted(Movie_1,Movie_2):-
  num_voted_users(Movie_1,X),
  num_voted_users(Movie_2,Y),
  Movie_1 \= Movie_2,
  Dif is X-Y,
  Dif_abs is abs(Dif),
  Dif_abs =< 1500. 

same_country(Movie_1,Movie_2):-
  country(Movie_1,X),
  country(Movie_2,X),
  Movie_1 \= Movie_2.
