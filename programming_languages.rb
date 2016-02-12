
def reformat_languages(languages)
  hash = {}
  languages.each do |style, language|
    language.each do |language2, type2|
      type2.each do |type3, value| 
        if hash.has_key?(language2) #if there is a key(language) that's already in the hash, add a value, do not overwrite
          hash[language2][:style] << style
        else
          hash[language2] = {:type => value, :style => [] << style} #create a new key, with a hash of :type and :style as keys.
        end
      end
    end
  end
  hash #return hash
end
