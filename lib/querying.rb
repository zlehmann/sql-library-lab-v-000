def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1 ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters GROUP BY name HAVING MAX(Length(motto)) ORDER BY motto ASC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY species ORDER BY COUNT(characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors, subgenres LEFT OUTER JOIN series ON authors.id = series.author_id WHERE authors.id = subgenres.id ORDER BY authors.name AND subgenres.name;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series INNER JOIN characters ON series.id = characters.series_id WHERE characters.species = \"human\" LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.id) FROM characters, books LEFT OUTER JOIN character_books ON characters.id = character_books.character_id WHERE character_books.book_id = books.id GROUP BY characters.name ORDER BY COUNT(books.id) DESC;"
end
