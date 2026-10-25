def display_current_inventory(inventory_list)
  inventory_list.each {|item, quantity| puts "#{item}, quantity: #{quantity}" }
end

def display_guess_order(guesses)
  guesses.each_with_index {|guess, idx| puts "Guess \##{idx + 1} is #{guess}" }
end

def find_absolute_values(numbers)
  numbers.map {|num| num.abs }
end

def find_low_inventory(inventory_list)
  inventory_list.select {|_item, quantity| quantity < 4 }
end

def find_word_lengths(word_list)
  word_list.reduce(Hash.new) do |hash, word|
    hash[word] = word.length
    hash
  end
end
