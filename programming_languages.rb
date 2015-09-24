def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |lang, type|
      type.each do |x, y|
        if new_hash.length < 7
          new_hash[lang] = {x => y, :style => [style]}
        else
          new_hash[:javascript][:style] << style
        end
      end
    end
  end
  new_hash
end