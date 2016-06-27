def reformat_languages(languages)
  new_hash={}
  languages. each do |weird, stuff|
    stuff.each do |lang,info|
      info.each do |key, value|
    new_hash[lang]={key => value, :style =>[]}
    end
   end 
  end 
  
  languages.each do |weird, stuff|
  stuff.each do |lang,info|
    if weird == languages.keys[0]
      new_hash[lang][:style]<<weird
    elsif weird == languages.keys[1]
      new_hash[lang][:style]<<weird
     end
   end
 end
  return new_hash
end
