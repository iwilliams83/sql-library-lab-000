def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY length(motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters WHERE species = 'human'"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors
  INNER JOIN subgenres ON subgenres.id = authors.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters ON
  characters.series_id = series.id WHERE characters.species = 'human'
  GROUP BY series.title ORDER BY (COUNT(characters.species)) DESC LIMIT 1"
end
#INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES
  #(1, "Lady", "Woof Woof", "direwolf", 1, 1),
  #(2, "Tyrion Lannister", "A Lannister always pays his debts", "human", 1, 1),
  #(3, "Daenerys Targaryen", "If I look back I am lost", "human", 1, 1),
  #(4, "Eddard Stark", "Winter is coming", "human", 1, 1);
  #(5, "Character One", "motto one", "cylon", 2, 2),
  #(6, "Character Two", "motto two", "human", 2, 2),
  #(7, "Character Three", "motto three", "cylon", 2, 2),
  #(8, "Character Four", "motto four", "cylon", 2, 2);
#INSERT INTO books (id, title, year, series_id) VALUES (1, "Game of Thrones", 1996, 1),
  #(2, "A Clash of Kings", 1998, 1), (3, "A Storm of Swords", 2000, 1), (4, "First Book", 2002, 2),
  #(5, "Second Book", 2003, 2), (6, "Third Book", 2005, 2);
def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books) FROM characters INNER JOIN books
  ON characters.series_id = books.series_id"
end
