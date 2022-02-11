DOWNCASE_LETTERS = ("a".."z").to_a
UPCASE_LETTERS = ("A".."Z").to_a


def shift(index, num)

    # Shift value = index of the letter + how much we want to slide (num)
    shift = index + num

    # If shift value is beyond +/-25 we have to wrap it up, because we only got (25 in the array) 26 characters in alphabet.
    if shift > 25
        
        # Modulo (%) operator to find the remainder.
        shift % 26
        
    elsif shift < -25
        shift % -26        
        
    # If non of the coditionals are ture it means we can safely retrun the shift value here.
    else
        shift
    end
end


def caesar_cipher(text, num)
    
    # Each word is put here after the shift. Becomes a nested array or words.
    array_of_words = []

    # If multiple words in text input, split them using .split(" ") method.  
    words = text.split(" ")

    # Go through each word to analyze the letters in next step.
    words.each do |word|

        # Only contains the letters of one shifted word at a time!
        array_of_letters = []

        # Go through each letter of each word to find the index of the letters before we shift them.
        word.split("").each do |letter|

            # See if the letter we go through is uppercase or lowercase.
            if UPCASE_LETTERS.include?(letter)
                index = UPCASE_LETTERS.index(letter)
                shift_value = shift(index,num)

                #Get the 'caesar_cipher letter' via its shift value from UPCASE_LETTERS and push it.
                array_of_letters.push(UPCASE_LETTERS[shift_value])

            elsif DOWNCASE_LETTERS.include?(letter)
                index = DOWNCASE_LETTERS.index(letter)
                shift_value = shift(index,num)

                #Get the 'caesar_cipher letter' via its shift value from DOWNCASE_LETTERS and push it.
                array_of_letters.push(DOWNCASE_LETTERS[shift_value])
            else

                #If it is not a letter (e.g., !, ?) just push it into the array_of_letters.
                array_of_letters.push(letter)
            end
        end

        # Push each word into the array_of_words.
        array_of_words.push(array_of_letters)    
    end

    # Join all the letters together.
    array_of_text = array_of_words.map { |word| word.join() }

    # Finally, join words together.
    final_output = array_of_text.join(" ")

    # Grand Finale
    p final_output
end

caesar_cipher("N mtuj dtz qnpji ny!", -5)
