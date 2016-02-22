require "pry"

def reformat_languages(languages)
  formatted_hash = {}
  languages.each do |style, value|
    value.each do |name, attributes|
      if formatted_hash[name] == nil
        formatted_hash[name] = attributes
        formatted_hash[name][:style] = []
      end
      formatted_hash[name][:style] << style
    end
  end
  formatted_hash
  #binding.pry
end
