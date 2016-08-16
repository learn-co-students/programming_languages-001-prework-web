languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}



# def reformat_languages(languages)
#   languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
# }

#   new_hash = {}

#   languages.each do |style, languages| #key = are the styles like:oo, functiona;
#     languages.each do |lang, literal_type| #category = 
#       # literal_type.each do |type_word, type_desc|
#       #   new_hash[lang] = literal_type.to_s
#       #   new_hash[lang] << [style]
#       # end
#       new_hash[lang] = literal_type
#       new_hash[lang][:style] = []
#       new_hash[lang][:style] << style unless new_hash[lang][:style].include?(key) 
#       # new_hash[lang] << :style

#     end
#   end


#   puts new_hash

# end

#javascript error at style. style value alters every time,
#create condition where when it is used, merge, or push it 
#instead of giving it a new value/style enclosed in an array
# the next succeeding elements to be added can be pushed via shovel since the prvious
#one is already within an array IF the lang has already been used/encountered.
#push languages encountered into the langs_used array to keep check . 
#---------------------------------------------



def reformat_languages(languages)
    new_hash = {}
    langs_used = []
    
    languages.each do |style, language|
        language.each do |lang, type|
            type.each do |type_symbol, interpreted_or_compiled|
                if langs_used.include?(lang)
                    new_hash[lang][:style] << style
                else
                    new_hash[lang] = { type: interpreted_or_compiled, style: [style] 
                    }
                end
                langs_used << (lang)
            end
        end
    end
    puts new_hash
    return new_hash
end


