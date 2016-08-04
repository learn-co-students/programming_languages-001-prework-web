require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.collect  do |style, language_info|
    language_info.collect do |language_name, type_info|
      if new_hash.has_key?(language_name)
        new_hash[language_name][:style] << style
      else
        new_hash[language_name] = type_info
        new_hash[language_name][:style] = [style]
      end   
    end    
  end  
  new_hash
end

=begin
languages= 
  (style) => {
    (language_name) = >
        type}


(language name =>
    type=> 
    Style =>)
=end