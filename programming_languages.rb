require 'pry'

def reformat_languages(languages)
  return_hash = {}
  languages.each do |lang_type, langs_hash|
    langs_hash.each do |lang, type_hash|
      type_hash.each do |type_symbol,type_of_lang|
        if return_hash[lang] == nil
          return_hash[lang] = { type: type_of_lang, style: [lang_type] }
        else
          return_hash[lang][:style] << lang_type
        end
      end
    end
  end
  return_hash
end
