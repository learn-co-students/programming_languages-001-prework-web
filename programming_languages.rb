def reformat_languages(languages)
  newHash = {}
  languages.each do |types, langs|
    langs.each do |lang, attributes|
      if newHash.key?(lang)
        newHash[lang][:style] << types
      else
        newHash[lang] = attributes
        newHash[lang][:style] = [types]
      end
    end
  end
  newHash
end
