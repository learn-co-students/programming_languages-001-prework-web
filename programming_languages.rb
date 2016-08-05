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
  final_language_hash = {}
  languages.each do |style, info|
      info.each do |language, details|
          #binding.pry
          if final_language_hash.key?(language)
             final_language_hash[language][:style] << style
          else
                final_language_hash[language] = {:type => details.values[0], :style => [style]}
          end
          end
      end
  final_language_hash
end


puts reformat_languages(languages)