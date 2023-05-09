def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  inventory_list.each do |key, value|
  # use puts to output each list item "<key>, quantity: <value>" to console
    puts "#{key}, quantity: #{value}"
  end
end

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  guesses.each_with_index do |item, index|
  # use puts to output each list item "Guess #<number> is <item>" to console
    puts "Guess ##{index + 1} is #{item}"
  # hint: the number should start with 1
  end
end

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  numbers.map do |number|
  # return an array of absolute values of each number
    number.abs
  end
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  inventory_list.select do |key, value|
  # return a hash of items with values less than 4
    value < 4
  end
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  word_list.reduce({}) do |hash, word|
  # return a hash with each word as the key and its length as the value
    hash[word] = word.length
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
    hash
  end
end
