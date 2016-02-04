def reformat_languages(languages)
  hash = {}
  array = []
  languages.each do |paradigm, style|
    array << paradigm
    style.each do |language, type_hash|
      hash[language] = type_hash
    end
  end
  hash.each do |key,value|
    if (key == :ruby) || (key == :python) || (key == :java)
      value[:style] = [:oo]
    elsif (key == :clojure) || (key == :erlang) || (key == :scala)
      value[:style] = [:functional]
    elsif key == :javascript
      value[:style] = [:oo, :functional]
    end
  end
  hash
end
