# implement a method that takes a string as the first argument
# and returns an array of valid substrings

def substrings(string, dictionary)
    # convert string to lowercase
    string = string.downcase
    # create an empty hash
    hash = {}
    # iterate through the dictionary
    dictionary.each do |word|
        # if the string includes the word
        if string.include?(word)
            # add the word to the hash
            hash[word] = string.scan(word).count
        end
    end
    # return the hash
    puts hash
    # one line solution
    #dictionary.select { |w| string.include?(w) }.map { |w| [w, string.scan(w).count] }.to_h    
end

dictionary = ["below","down","go","going","horn","how",
    "howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)