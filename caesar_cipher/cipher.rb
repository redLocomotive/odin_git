require 'pry-byebug'

def caesar_cipher (string, shift_num)
    string.each_char.reduce('') do |acc, c|
        v = c.ord
        shifted_ord = v + shift_num
        case c
        when 'a'..'z' # lowercase 
            ord = shifted_ord > 122 ? 'a'.ord - 1 + shifted_ord % 122 : shifted_ord
        when 'A'..'Z'  # uppercase
            ord = shifted_ord > 90 ? 'A'.ord - 1 + shifted_ord % 90 : shifted_ord
        else # non alphabetical character
            ord = v 
        end
        acc + ord.chr 
    end
end

v = caesar_cipher("What a string!", 5) 
p v
p v == "Bmfy f xywnsl!"

