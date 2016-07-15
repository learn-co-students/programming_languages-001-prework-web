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

  rl = {}

  languages.each do |style, langs|
    langs.each do |lang_name, type|

      if(rl[lang_name] == nil)
        rl[lang_name] = {}
        rl[lang_name][:style] = []
      end

      #rl[lang_name][:style] = [] if ! defined?(rl[lang_name][:style])

      rl[lang_name][:type] = type[:type]
      rl[lang_name][:style] << style
    end
  end

  rl
end



p reformat_languages(languages)
