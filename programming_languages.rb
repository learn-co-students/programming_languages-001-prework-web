def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style,language|
    language.each do |name,type|
        if new_hash[name] == nil
          new_hash[name] = type
          new_hash[name][:style] = []
        end
        new_hash[name][:style] << style
    end
  end
  new_hash
end