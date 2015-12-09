require 'pry'

def reformat_languages(languages)
  # your code here
  new = {}
  languages.each do |style,data|
    data.each do |lang,t|
      type = t[:type]
      if new.has_key?(lang)
        new[lang][:style].push(style)
      else
        new[lang] = {
          :type => type,
          :style => []
        }
        new[lang][:style].push(style)
      end
    end
  end
  new
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

#puts reformat_languages(languages) 
