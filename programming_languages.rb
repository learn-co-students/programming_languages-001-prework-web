# require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    language.each do |lang_name, type|

      # check if new_hash already has a key equal to lang_name.
      # If it does, don't overwrite the :style key, just add to its array.
      # This accounts for keys such as :javascript, which caters to both
      # programming types
      if new_hash.has_key?(lang_name)
        new_hash[lang_name][:style] << style
      else
        new_hash[lang_name] = type
        new_hash[lang_name][:style] = [] << style
      end
    end
  end
  new_hash
end
