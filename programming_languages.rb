require 'pry'

# def style_exists (hash,language)
#   if hash[language][:style][0] != nil
#     return true
#   else
#     return false
#   end
# end

def reformat_languages(languages)
  # your code here
  return_hash = {}
  languages.each do |style,language_hash|
    language_hash.each do |language,type_hash|
      type=type_hash[:type]
      if return_hash.has_key?(language)
        return_hash[language][:style] << style
      else
        return_hash[language] = {
          :type => type,
          :style => []
        }
        return_hash[language][:style] << style
      end
    end
  end
  return_hash
end

def test_hash
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
end

reformat_languages(test_hash)










  # # your code here
  # return_hash = {}
  # languages.each do |style,language|
  #   #puts style
  #   language_array=language.keys
  #   #puts language_array
  #   if return_hash[language_array[0]] != nil
  #     return_hash[language_array[0]][:style] << style
  #   else
  #     return_hash[language_array[0]] = {
  #       :type => language[language_array[0]][:type],
  #       :style => []
  #     }
  #   end
  # end
  # return_hash