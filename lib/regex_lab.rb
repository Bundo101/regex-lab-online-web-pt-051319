def starts_with_a_vowel?(word)
  if word.match(/^[aeiouAEIOU]/)
    true
  else
    false
  end
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z].*[[:punct:]]$/)
    true
  else
    false
  end
end

def valid_phone_number?(phone)
  new_array = phone.map { |number| number.gsub(/[^\d]/, '') }
  total = 0
  new_array.each do |element|
    total += element.length
  end
  if total / new_array.length == 10
    true
  else
    false
  end
end
