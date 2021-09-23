class PigLatinizer

    def piglatinize(input_string)
        input_string.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_i = word.index(/[AEIOUaeiou]/)
            consonants = word.slice(0..vowel_i-1)
            word_leftover = word.slice(vowel_i..word.length)
            word_leftover + consonants + "ay"
        end
    end

    def vowel?(char)
        char.match(/[AEIOUaeiou]/)
    end

end