require 'pry'

def lang_hash 
  {
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

def reformat_languages(languages)
  hash = {}
  array = []
  lang_hash.each do |styles, data|
    array << styles
    data.each do |lang, type_hash|
      hash[lang] = type_hash
    end
  end
   hash.each do |key, value|
      if key == :javascript
        value[:style] = array
      elsif key == :ruby || key == :python || key == :java
        value[:style] = [:oo]
      elsif key == :clojure || key == :erlang || key ==:scala
        value[:style] = [:functional]
  end 
end
  hash
end




