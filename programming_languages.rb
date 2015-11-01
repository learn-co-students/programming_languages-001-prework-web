require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |key, value|
    value.each do |sub_key, sub_value|
      new_hash[sub_key] = sub_value
      new_hash[sub_key][:style] = []
      new_hash[sub_key][:style] << languages.keys[0] if languages[languages.keys[0]].keys.include?(sub_key)
      new_hash[sub_key][:style] << languages.keys[1] if languages[languages.keys[1]].keys.include?(sub_key)
    end
  end
  new_hash
end
