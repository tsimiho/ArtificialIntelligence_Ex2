find_sim_1(X,Y):- movie_title(X),
                  relatively_similar_genres(X,Y).
                  
find_sim_2(X,Y):- movie_title(X),
                  similar_genres(X,Y1), 
                  same_language(X,Y2),
                  common_production_country(X,Y3),
                  intersection(Y1,Y2,Y4),
                  intersection(Y3,Y4,Y).

find_sim_3(X,Y):- movie_title(X),
                  similar_genres(X,Y1), 
                  same_language(X,Y2),
                  common_production_country(X,Y3),
                  color(X, C),
                  findall(M, color(M,C), Y4),
                  intersection(Y1,Y2,Y5),
                  intersection(Y3,Y4,Y6),
                  intersection(Y5,Y6,Y).

find_sim_4(X,Y):- movie_title(X),
                  similar_genres(X,Y1), 
                  same_language(X,Y2),
                  common_production_country(X,Y3),
                  color(X, C),
                  findall(M, color(M,C), Y4),                  
                  common_production_company(X,Y5),
                  similar_plot(X,Y6),
                  intersection(Y1,Y2,Y7),
                  intersection(Y3,Y4,Y8),
                  intersection(Y5,Y6,Y9),
                  intersection(Y7,Y8,Y10),
                  intersection(Y9,Y10,Y).

find_sim_5(X,Y):- movie_title(X),
                  similar_genres(X,Y1), 
                  relatively_similar_actors(X,Y2),
                  same_language(X,Y3),
                  common_production_country(X,Y4),
                  color(X, C),
                  findall(M, color(M,C), Y5),                  
                  common_production_company(X,Y6),
                  same_plot(X,Y7),
                  intersection(Y1,Y2,Y8),
                  intersection(Y3,Y4,Y9),
                  intersection(Y5,Y6,Y10),
                  intersection(Y7,Y8,Y11),
                  intersection(Y9,Y10,Y12),
                  intersection(Y11,Y12,Y).

