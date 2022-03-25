def bubble_sort(array)
    # This while loop is for repeating second while loop for item times.
    turn = -1
    while turn < (array.length - 1)
        turn += 1
        
        # This while loop is for comparing one "a" item to "b" item till the end of the array.
        i = -1
        while i < (array.length - 1)
            i += 1
            a = array[i]
            b = array[i+1]
            
            if b == nil then 
                next
            else
                # If a is bigger than b, switch positions.
                if a > b
                    array[i] = b
                    array[i+1] = a
                end
            end
        end
    end
    p array
end


# To compare words, just alter line 18 like this: a.length > b.length


bubble_sort(["hello","my name is","ola","hey man!","that is so cool",""])
