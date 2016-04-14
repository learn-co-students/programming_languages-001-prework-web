
def reformat_languages(languages)


  hash ={}
    languages[:oo].each do |language, v|
      hash[language] = v
    end

    languages[:functional].each do |k, v|
      hash[k] = v
    end
  hash.each do |language, attributes|
    hash[language][:style] = []
    if languages[:oo].select {|x| x == language}.length != 0 && languages[:functional].select {|x| x == language}.length != 0 
      hash[language][:style].push(:oo)
      hash[language][:style].push(:functional)
    elsif languages[:oo].select {|x| x == language}.length != 0
      hash[language][:style].push(:oo)
    elsif languages[:functional].select {|x| x == language}.length != 0 
      hash[language][:style].push(:functional)
    end
  end
  
  hash
end
