require 'pry-byebug'

def caesar_cipher (string, shift_num)
    string.split('').reduce('') do |acc, c|
        v = c.ord
        case v
        when 97..122 # lowercase 
            ord = v + 5 > 122 ? 'a'.ord - 1 + (v + 5) % 122 : v + 5
        when 65..90  # uppercase
            ord = v + 5 > 90 ? 'A'.ord - 1 + (v + 5) % 90 : v + 5
        else # non alphabetical character
            ord = v 
        end
        acc + ord.chr 
    end
end

v = caesar_cipher("What a string!", 5) 
p v
p v == "Bmfy f xywnsl!"
