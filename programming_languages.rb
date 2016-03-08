def reformat_languages(languages)
 new_hash = {}
   languages.each do |style, language|
     language.each do |name, data|
       if new_hash[name] == nil
         new_hash[name] = {}
         new_hash[name][:style] = []
       end
       new_hash[name][:style] << style
       data.each do |key, value|
         new_hash[name][key] = value
       end
     end
   end
 new_hash
  end