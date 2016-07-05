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
  new_hash = {}
  array = []
  lang_hash.each do |style, data|
    array << style
    data.each do |lang, hash_type|
      new_hash[lang] = hash_type
    end
end
new_hash.each do |key, value|
  if key == :javascript
    value[:style] = array
  elsif key == :ruby || key == :python || key == :java
    value[:style] = [:oo]
  elsif key == :clojure || key == :erlang || key ==:scala
    value[:style] = [:functional]
  end
end
  new_hash
end
