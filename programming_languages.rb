def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style,language|
    language.each do |lang_name, attribute|
      attribute.each do |type,type_name|
        if !new_hash.key?(lang_name)
          new_hash[lang_name] = {}
        end
        if !new_hash[lang_name].key?(type)
          new_hash[lang_name][type] = type_name
        end
        if !new_hash[lang_name].key?(:style)
          new_hash[lang_name][:style] = []
          new_hash[lang_name][:style] << style
        else
          new_hash[lang_name][:style] << style
        end
      end
    end
  end
  new_hash
end
