dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
    hash = {}

    splitted_words = words.split(" ")
    
    splitted_words.each do |word|
        word.downcase!
        
        # Compare each |item| from dictionary with |word|s that were given as paramater. 
        dictionary.each do |item|

            # If item already in hash as a key, use item's existing count value. Otherwise creates new count value for new item to be count.
            if hash.has_key?(item) then count = hash[item] else count = 0 end
            
            if word.include?(item)
                count += 1
                hash.merge!(item => count)
                
                # Puts statements only to monitor what is going on in the terminal.
                puts "Base word: #{word} | Includes: #{item} \n "
            else
                puts "Base word: #{word} | Does not includes: #{item} \n "
            end
        end
    end
    puts hash
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
