find_sim_1(X,Y):- movie_title(X),
                  relatively_similar_genres(X,Y1), 
                  intersection(Y1,Y2,Y).

find_sim_2(X,Y):- movie_title(X),
                  similar_genres(X,Y1), 
                  same_language(X,Y2)
                  common_production_country(X,Y3),
                  intersection(Y1,Y2,Y4),
                  intersection(Y3,Y4,Y).

find_sim_3(X,Y):- movie_title(X)
                  similar_genres(X,M), 
                  relatively_similar_actors(X,M),
                  same_language(X,M)
                  common_production_country(X,M)
                  same_decade(X,M)
                  colored_movie(X,C), colored_movie(M,C).

find_sim_4(X,Y):- findall(M, (movie_title(X), movie_title(M),
                  similar_genres(X,M), 
                  similar_actors(X,M),
                  same_language(X,M)
                  common_production_countrM(X,M)
                  same_decade(X,M)
                  colored_movie(X,C), colored_movie(M,C)
                  similar_plot(X,M),
                  common_production_companM(X,M)), Y).

find_sim_5(X,Y):- findall(M, (movie_title(X), movie_title(M),
                  same_genres(X,M), 
                  same_actors(X,M),
                  same_language(X,M)
                  common_production_countrM(X,M)
                  same_decade(X,M)
                  colored_movie(X,C), colored_movie(M,C)
                  same_plot(X,M),
                  common_production_companM(X,M),
                  same_director(X,M)), Y).

