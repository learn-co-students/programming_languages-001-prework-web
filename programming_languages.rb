def reformat_languages(languages_hash)
  new_hash = {}

  languages_hash.each do | style, data |
    data.each do | language, lang_data|
      lang_sym = language.to_sym
      if new_hash[lang_sym].nil?
        lang_data[:style] = [style]
        new_hash[lang_sym] = lang_data
      else
        new_hash[lang_sym][:style] << style
      end
    end
  end

  new_hash
end