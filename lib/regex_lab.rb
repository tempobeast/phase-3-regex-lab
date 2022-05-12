def starts_with_a_vowel?(word)
  first_letter = word[0]
  if first_letter.downcase.match(/[^aeiou]/)
    false
  else 
    true
  end
end

def words_starting_with_un_and_ending_with_ing(text)
    lower = text.downcase
    lower.scan(/\w+ing/) 
    #lower.slice(0, 2).match(/un/) && lower.slice(-3, lower.length).match(/ing/)
end

def words_five_letters_long(text)
    split_string = text.split
    split_string.grep(/^\w{5}$/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    if text.match(/^[A-Z]/) && text.match(/\W\z/)
        true
    else
        false
    end
end

def valid_phone_number?(phone)
    nums = phone.gsub(/[^0-9]/, '')

    if nums.match(/(\d{10})/)
        true
    else
        false
    end

    # if phone.match(/^\d{10}$/)
    #     true
    # else 
    #     false
    # end
end
