
#iterated one level deeper
def reformat_languages(languages)
  new_hash = {}
  arraystyles = []
  languages.each do |styles, all_info|
    arraystyles << styles
    all_info.each do |programming_language, info|
    if all_info.has_key?(:javascript) && :javascript == programming_language
      new_hash[programming_language] = info
      new_hash[programming_language][:style] = arraystyles
    else 
      new_hash[programming_language] = info
      new_hash[programming_language][:style] = [styles]
    end

   end  
  end
  new_hash
end


#fossbender
#if the new has keys already include the language 
#build key value this way
#else
#build key value another way


#mailethiesen
#it's checking to see if it is nil, and if it is it creates a nil array or nil hash
#if it's not nil, then it does the next thing. So for your code
#new_hash[programming_language] ||= info new_hash[programming_language][😒tyle] ||= [styles]
#my friend explained the double pipe equals to me this way " ||= will work like an assignment if the variable on the left doesn't already have a value."

#  languages.each do |style2, set2|
#    new_hash = styles
#  end  

#      if styles[programming_language] == programming_language
#          new_hash[programming_language][:style] << [styles]
#      end   

#  new_hash = [languages.values]
#  new_hash = languages[:oo] #pulls language k,v pairs
#  new_hash = languages[:functional]
#  new_hash[:ruby][:style] = [languages.keys[0]] #updates style on ruby, indexes pulls it out of array, so put it back
#  new_hash[:javascript][:style] = languages.keys #updates javascript, whole array works, no need to format to an array
#  new_hash[:python][:style] = [languages.keys[0]]
#  new_hash[:java][:style] = [languages.keys[0]]

#  new_hash[:clojure][:style] = [languages.keys[1]]
#  new_hash[:erlang][:style] = [languages.keys[1]]
#  new_hash[:scala][:style] = [languages.keys[1]]

