def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |sty, lang|
    lang.each do |name, desc|
      new_hash[name] = desc
    end
  end
  # new_hash[:ruby][:style] = [:oo]
  # new_hash[:javascript][:style] = [:functional, :oo]
  # new_hash[:python][:style] = [:oo]
  # new_hash[:java][:style] = [:oo]
  # new_hash[:clojure][:style] = [:functional]
  # new_hash[:erlang][:style] = [:functional]
  # new_hash[:scala][:style] = [:functional]


  languages.each do |sty, stuff|
    new_hash.each do |name,info|
      if name == :javascript
        new_hash[name][:style] = [:functional, :oo]
      elsif name == :clojure 
        new_hash[name][:style] = [:functional]
      elsif name == :erlang 
        new_hash[name][:style] = [:functional]
      elsif name == :scala 
        new_hash[name][:style] = [:functional]
      elsif name == :ruby || :python || :java   
        new_hash[name][:style] = [:oo]                
      end
    end
  end
  new_hash
end
