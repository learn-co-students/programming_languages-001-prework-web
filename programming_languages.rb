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
  form_hash = {}
  
  languages.each do |design, data|
    data.each do |lang, lang_data|
      if form_hash.has_key?(lang)
      # if the language exists as a key, 
        form_hash[lang][:style] << design
      else
        form_hash[lang] = {:type => lang_data[:type], :style => [design]}
        # if the language doesn't exist as a key (js), add another style
      end
    end
  end
  form_hash
end
