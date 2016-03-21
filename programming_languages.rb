def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |lang, v|
      if new_hash[lang].nil?
        new_hash[lang] = {}
      end
      if new_hash[lang][:style].nil?
        new_hash[lang][:style] = []
      end
      new_hash[lang][:style] << key

      v.each do |type, v2|
        new_hash[lang][type] = v2
      end
    end
  end
  new_hash
end
