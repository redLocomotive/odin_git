require 'pry-byebug'

def caesar_cipher (string, shift_num)
    string.each_char.reduce('') do |acc, c|
        v = c.ord
        case c
        when 'a'..'z' # lowercase 
            ord = v + 5 > 122 ? 'a'.ord - 1 + (v + shift_num) % 122 : v + 5
        when 'A'..'Z'  # uppercase
            ord = v + 5 > 90 ? 'A'.ord - 1 + (v + shift_num) % 90 : v + 5
        else # non alphabetical character
            ord = v 
        end
        acc + ord.chr 
    end
end

v = caesar_cipher("What a string!", 5) 
p v
p v == "Bmfy f xywnsl!"

