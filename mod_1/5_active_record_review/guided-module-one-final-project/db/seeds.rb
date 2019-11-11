leo = Actor.create(name: "Leo DiCaprio")
bruce = Actor.create(name: "Bruce Willis")

# title, release_date, rated_as, description
titanic = Movie.create(title: "Titanic", release_date: "1997", rated_as: "PG13", description: "icy dead people")
diehard = Movie.create(title: "Die Hard", release_date: "1997", rated_as: "PG13", description: "explosions and stuff at Christmastime")

# ActiveRecord expects a relationship to an object, through an id - both of these work
MovieActor.create(actor: leo, movie: titanic)
MovieActor.create(actor_id: bruce.id, movie: diehard)
# MovieActor.create(actor_id: leo.id, movie_id: titanic.id)

# If you specify an id, it expects an id, and if you specify an object, it expects an object

