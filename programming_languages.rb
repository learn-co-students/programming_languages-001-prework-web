def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language|
    language.each do |name, data|
      new_hash[name] ||= data
      new_hash[name][:style] ||= []
      new_hash[name][:style] << style
    end
  end
  new_hash
end
