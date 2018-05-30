library(dplyr)
movies = read.csv('movie_rating.csv')

# all genres: 'Documentary','Short','Animation','Comedy','Romance', 'Sport','News',
# 'Drama','Fantasy','Horror','Biography','Music','War','Crime','Western','Family',
# 'Adventure','History','Sci-Fi','Action','Mystery','Thriller','Musical','Film-Noir',
# 'Game-Show','Reality-TV','Talk-Show','Adult'

animation <- filter(movies, movies$genres %in% c('Animation'))
drama <- filter(movies, movies$genres %in% c('Drama'))
documentary <- filter(movies, movies$genres %in% c('Documentary'))

sample_number <- 100
s_animation <- animation[sample(nrow(animation), sample_number), ]
s_drama <- drama[sample(nrow(drama), sample_number), ]
s_documentary <- documentary[sample(nrow(documentary), sample_number), ]

hist(s_animation$averageRating)
mean(s_animation$averageRating)

hist(s_drama$averageRating)
mean(s_drama$averageRating)


t.test(s_drama$averageRating,s_animation$averageRating)
t.test(s_documentary$averageRating,s_animation$averageRating, var.equal = FALSE)

