require 'pry'
# original_languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },

# },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },


# reformatted = {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },


def reformat_languages(original_languages)
  languages_array = original_languages[:oo].keys + original_languages[:functional].keys
  languages_array.each_with_object({}) do |language, reformatted_hash|  
    original_languages.each do |style, language_hashes|
      language_hashes.each do |language, type_hash|
        type_hash.each do |type_key, type_value|
          reformatted_hash[language] = {:type => type_value, :style => [] << style}
          if language == :javascript
          reformatted_hash[language][:style] = original_languages.keys
          end
        end
      end
    end    
  end 
end   

  

  

  # oo_languages = original_languages.fetch(:oo).keys #ruby, etc.
  # functional_languages = original_languages.fetch(:functional).keys #clojure, etc
  # all_languages = oo_languages + functional_languages



  # styles = original_languages.keys


  # # reformatted = {}
  # # original_languages.each do |style, language_hash|
  # #   language_hash.each do |language, type_hash|
  # #    binding.pry
  # #    reformatted[language] = type_hash
  # #   end 
  # # end  
  # # reformatted


  # # separate into :oo and :functional
  # # reformatted = {}
  
  # merged_languages.each do |language|
  #   if language == javascript
  #     reformatted[:javascript][:style] = [:oo, :functional]
  #   elsif language[:oo].keys.include?(language)
  #     reformatted[language][:style] = [:oo]
  #   else language[:functional].keys.include?(language)
  #     reformatted[language][:style] = [:functional]
  #   end  



  # oo_languages.each_with_object({}) do |language, reformatted|
  #   reformatted[language] = original_languages.fetch(:oo).fetch(language)
  # end 

  # then think about style

  




















#iterated one level deeper
# def reformat_languages(languages)
#   new_hash = {}
#   arraystyles = []
#   languages.each do |styles, all_info|
#     arraystyles << styles
#     all_info.each do |programming_language, info|
#     if all_info.has_key?(:javascript) && :javascript == programming_language
#       new_hash[programming_language] = info
#       new_hash[programming_language][:style] = arraystyles
#     else 
#       new_hash[programming_language] = info
#       new_hash[programming_language][:style] = [styles]
#     end

#    end  
#   end
#   new_hash
# end


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

