require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash={}
  languages.each do |style,langs|
    langs.each do |name, type|
      if new_hash.keys.include?(name) == false
        new_hash[name] = type
        new_hash[name].store(:style, [style])
      else 
        new_hash[name][:style] << style
      end
    end
  end
  new_hash
end
