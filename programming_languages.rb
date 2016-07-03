def reformat_languages(languages) #both input and output are hashes
  reformatted_languages ={}
  new_language_keys = []
  styles_array = []
  type_array = []
  languages.each do |style, values|
    new_language_keys << values.keys
    values.each do |type_key, type_value|
      type_array << type_value.values
      styles_array << style
    end
  end
  new_language_keys.flatten!
  type_array.flatten!
  new_language_keys.each_with_index do |key, index|
    if reformatted_languages.has_key?(key) #add to styles array
      reformatted_languages[key][:style] << styles_array[index]
    else #just create a new key-value pair
      reformatted_languages[key] = {type: type_array[index], style: [styles_array[index]]}
    end
  end
  reformatted_languages
end
