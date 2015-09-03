require 'pry'

def reformat_languages(languages)
  # your code here
new_hash = {}
  languages.each do |style, language|
    language.each do |specific_language, type_hash|
      type_hash.each_value do |type_value|
        new_hash[specific_language] = {}
        new_hash[specific_language][:type] = []
        new_hash[specific_language][:type] = type_value
      end
    end
  end 
  languages.each do |style, language|
    language.each_key do |specific_language|
      if new_hash[specific_language][:style]
        new_hash[specific_language][:style] << style
      else new_hash[specific_language][:style] = [style]
      end
    end
  end
new_hash
end