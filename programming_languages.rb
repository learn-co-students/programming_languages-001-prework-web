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
  new_hash = Hash.new(0)
  arr =[]
  languages.each do |style, language_list|
    language_list.each do |language, data|
      if arr.include?(language) == false
        new_hash[language] = data
        new_hash[language][:style] = [style]
        arr << language
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
