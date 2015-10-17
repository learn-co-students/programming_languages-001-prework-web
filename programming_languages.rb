def reformat_languages(languages)
  new_hash = {}
  languages.each do |oo_or_functional, list_of_langs|
    list_of_langs.each do |language, details|
      new_hash[language] = new_hash[language] || {
        type: details[:type],
        style: []
      }
      new_hash[language][:style] << oo_or_functional
    end
  end
  new_hash
end
