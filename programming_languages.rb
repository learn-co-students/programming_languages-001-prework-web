require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style,language|
    language.each do |name,type_hash|
      style_array = []
      languages.keys.each do |k|
        new_hash[name] = {type: type_hash[:type],
                          style: languages[k].has_key?(name) ? style_array << k : style_array}
      end
    end
  end
  new_hash
end
