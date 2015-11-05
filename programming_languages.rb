require 'pry'

def reformat_languages(hash)
  new_hash = {}
  hash.each do |style, langs|
    langs.each do |lang, info|
      if new_hash[lang] == nil
        new_hash[lang] = info
        new_hash[lang][:style] = [] << style
      else 
        new_hash[lang][:style] << style
      end
    end
  end
  new_hash
end