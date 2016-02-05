def reformat_languages(languages)
  new_hash = {}
  languages.each do |key1, value1|
    value1.each do |key2, value2|
    new_hash[key2]= {type:'', style: []}
    new_hash[key2][:style] << key1
    value2.each do |key3, value3|
      new_hash[key2][:type].concat(value3)
    end
    end
  end
  new_hash[:javascript][:style] << :oo
new_hash
end

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
reformat_languages(languages)
