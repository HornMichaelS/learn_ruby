#write your code here

def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat phrase, n = 2
    repeated = phrase
    phrase += (" " + phrase) * (n - 1)
end

def start_of_word word, n
    word.split("")[0..n-1].join("")
end

def first_word sentence
    sentence.split.first
end

def titleize sentence
    non_title_words = [
        "a", "an", "the", "for", "and", "but", 
        "so", "nor", "or", "yet", "at", "around", 
        "by", "after", "along", "from", "of", "on", 
        "with", "without", "over", "under", "behind",
        "above"
    ]

    titleized = sentence.split.map.with_index do |word, index|
        if index == 0 or not non_title_words.include?(word)
            word.capitalize
        else 
            word
        end
    end

    return titleized.join(" ")
end
