#hash structure:
#  key (style), nested_hesh(lang)
#                    Key=lang, value=attribute
#                          key = type, value= "data"  
require 'pry'

def reformat_languages(languages) 
  # your code here
  new_hash = Hash.new
  languages.each do |style, language_data_hash|
    language_data_hash.each do |lang, attribute_hash|
      attribute_hash.each do |type, data|
        new_hash[lang] = {type: data}
        #binding.pry
      end
    end
  end
  languages.each do |style, language_data_hash|
    language_data_hash.each_key do |lang|
      if new_hash[lang][:style]
        new_hash[lang][:style] << style
      else new_hash[lang][:style] = [style]
      end
    end
  end
  #new_hash[:javascript][:style] = [:oo, :functional]
  new_hash
end
