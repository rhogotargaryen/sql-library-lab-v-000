def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, year FROM books
JOIN series ON series_id = series.id
WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
ORDER BY LENGTH(motto) DESC
LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS c_spec FROM characters
GROUP BY species
ORDER BY c_spec DESC
LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series
JOIN authors ON author_id = authors.id
JOIN subgenres ON subgenre_id = subgenres.id
"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM characters
JOIN series ON series_id = series.id
WHERE species = \"human\"
GROUP BY title
LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(book_id) AS b_count FROM character_books
JOIN characters ON character_id = characters.id
GROUP BY name
ORDER BY b_count DESC"
end
