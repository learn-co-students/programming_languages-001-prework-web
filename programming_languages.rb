def reformat_languages(languages)
  new_hash = {}

  languages.each do |style, lang|
    lang.each do |lang, type|
      new_hash[lang] = type
    end
  end

  new_hash.collect do |lang, info|
    info[:style] = []
  end

  languages.each do |style, lang|
    lang.each do |name, type|
      new_hash.each do |lang, info|
        if lang == name
          info[:style] << style
        end
      end
    end
  end
  new_hash
end
