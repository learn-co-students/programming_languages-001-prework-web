require 'pry'
 
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
 
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, s_value|
    s_value.each do |language, l_value|
      l_value.each do |attribute, value|
        if new_hash.has_key?(language)
          new_hash[language][:style] << style
        else
          new_hash[language] = {
            attribute => value,
            :style => [style]
          }
        end
      end
    end
  end
  new_hash
end
 
reformat_languages(languages)