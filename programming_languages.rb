def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, list|
    list.each do |language, value|
      new_hash[language] = value
      new_hash[language][:style] = []
    end
  end
  languages.each do |style, list|
    list.each do |language, value|
      if style == :oo
        new_hash[language][:style] << :oo
      else
        new_hash[language][:style] << :functional
      end
    end
  end
  new_hash
end
