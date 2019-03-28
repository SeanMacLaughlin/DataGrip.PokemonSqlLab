
-- Part 2 //

-- What are all the types of pokemon that a pokemon can have?
  SELECT * FROM pokemon.types;

-- What is the name of the pokemon with id 45?
  SELECT name FROM pokemon.pokemons WHERE id = '45';

-- How many pokemon are there?
  SELECT COUNT(id) FROM pokemon.pokemons;

-- How many types are there?
  SELECT COUNT(id) FROM pokemon.types;

-- How many pokemon have a secondary type?
  SELECT COUNT(name) FROM pokemon.pokemons WHERE secondary_type IS NOT NULL;


-- Part 3 //

-- What is each pokemon's primary type?
  -- SELECT primary_type FROM pokemon.pokemons;

-- What is Rufflet's secondary type?
  -- SELECT secondary_type FROM pokemon.pokemons WHERE name = "Rufflet";

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
  -- SELECT pokemon_id FROM pokemon.pokemon_trainer WHERE trainerID = 303;

-- How many pokemon have a secondary type Poison?
  -- SELECT COUNT(id) FROM pokemon.pokemons WHERE secondary_type = 7;

-- What are all the primary types and how many pokemon have that type?
  SELECT t.name, COUNT(p.primary_type) FROM pokemon.pokemons p INNER JOIN pokemon.types t
  ON p.primary_type = t.id
  GROUP BY t.name;

-- How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer



-- How many pokemon only belong to one trainer and no other?