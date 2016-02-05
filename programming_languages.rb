# def reformat_languages(languages)
#   formatted = {}
#   languages.each do |type, langs|
#     construct_lang_hashs(langs, type, formatted)
#   end
#   formatted
# end

def reformat_languages(languages)
  languages.each_with_object({}) do |(type, langs), formatted|
    construct_lang_hashs(langs, type, formatted)
  end
end

def construct_lang_hashs(langs, lang_type, new_hash)
  langs.each do |lang, lang_data|
    new_hash[lang] = lang_data if (!(new_hash.has_key?(lang)))
    new_hash[lang].keys.size < 2 ? new_hash[lang][:style] = [lang_type] : new_hash[lang][:style] << lang_type
  end
end


