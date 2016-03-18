require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, language|
    language.each do |name, attributes|
      new_hash[name] = attributes
      new_hash[name][:style] = []
      new_hash[name][:style] << type 
    end
    new_hash[:javascript][:style] << :oo #javascript is under both types
  end
  return new_hash
end