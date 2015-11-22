require 'pry'

def reformat_languages(languages)
  
  new_hash = {}
  #style_array = []

  languages.each do |style, languagez|
    languagez.each do |language, type|
      type.each do |type, type_value|
      #new_hash[language] = {}
        if new_hash[language] == nil
          new_hash[language] = {type => type_value, :style => []}
        end
        new_hash[language][:style] << style
      end
    end
  end

  new_hash
  #new_hash[:javascript][:style] = [:oo, :functional]

end
