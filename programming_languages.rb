require "pry"

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, style_hash|
    style_hash.each do |language, language_hash|
      language_hash.each do |type, type_string|


        if language == :javascript
          new_hash[language] = {
            type => type_string,
            :style => [:oo, :functional]
          }

        else

        new_hash[language] = {
          type => type_string,
          :style => [style]
        }
      end
      end
    end
  end
  new_hash
end
