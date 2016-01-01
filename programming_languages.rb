def reformat_languages(languages)
  # your code here
  functional_language =[]
  objor_language =[]
  language_hash = {}
  languages.each do |type, data|
    data.each do |x, y|
      if type == :oo
        objor_language << {x => y}
      elsif type == :functional
       functional_language << {x => y}
      end
    end
  end
  obj_style = [:oo]
  func_style = [:functional]
  obj_func = [:oo, :functional]
  objor_language.each do |x|
    x.each do |lang, data|
      language_hash[lang] = data
      language_hash[lang][:style] = obj_style
    end
  end
  functional_language.each do |x|
    x.each do |lang, data|
      if language_hash.include?(lang)
      language_hash[lang][:style] = obj_func
      else
       language_hash[lang] = data
       language_hash[lang][:style] = func_style
      end
    end
  end
  language_hash
end