def substrings(str, dict)
    dict.reduce(Hash.new(0)) do |hash, substr|
        occurence = str.downcase.scan(/(?=#{substr.downcase})/).count
        hash[substr] = occurence
    end
end
