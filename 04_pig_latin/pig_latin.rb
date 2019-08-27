#write your code here

def translate sentence
    vowels = ["a", "e", "i", "o", "u"]

    sentence.split.map do |word|
        prefix_length = 0
        chars = word.split('')

        while not vowels.include?(chars[prefix_length].downcase)
            prefix_length += 1
        end

        if prefix_length > 0 and chars[prefix_length].downcase == 'u' and chars[prefix_length - 1].downcase == 'q'
            prefix_length += 1
        end

        if prefix_length > 0
            word[prefix_length..-1] + word[0..prefix_length - 1] + 'ay'
        else
            word + 'ay'
        end
    end.join " "
end
