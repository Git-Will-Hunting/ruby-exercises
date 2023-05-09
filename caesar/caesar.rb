def caesar_cipher(string, shift)
    shift = shift % 26
    result = ""
    string.each_char do |char|
        # record base value of each character
        char_code = char.ord
        if char_code.between?(65, 90) || char_code.between?(97, 122)
            (a, z) = case char_code
                # if char is uppercase it is between 65 and 90
                # if char is lowercase it is between 97 and 122
                when 65..90 then [65, 90]
                when 97..122 then [97, 122]
                else next
            end
            wrapChar = shift > 0 ? 26 : -26
            # apply shift to base value & account for wrap around
            char_code += shift
            char_code -= wrapChar unless char_code.between?(a, z)
            # add rotated character to result
            result += char_code.chr
        else
            # add non-alphabetical character to result
            result += char
        end
    end
    # print result
    puts result
end

caesar_cipher("What a string!", 5)
caesar_cipher("abcdefghijklmnopqrstuvwxyz", 5)
caesar_cipher("ABCDEFGHIJK%$LMN^&OPQRSTUVWXYZ", 300)