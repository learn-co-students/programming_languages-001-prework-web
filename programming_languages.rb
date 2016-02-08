require 'pry'
# def reformat_languages(languages)
#   formatted = {}
#   languages.each do |type, langs|
#     construct_lang_hashs(langs, type, formatted)
#   end
#   formatted
# end

# def reformat_languages(languages)
#   languages.each_with_object({}) do |(style, langs), formatted|
#     construct_lang_hashs(langs, style, formatted)
#   end
# end

# def construct_lang_hashs(langs, lang_style, new_hash)
#   langs.each do |lang, lang_data|
#     new_hash[lang] = lang_data if (!(new_hash.has_key?(lang)))
#     new_hash[lang].keys.size < 2 ? new_hash[lang][:style] = [lang_style] : new_hash[lang][:style] << lang_style
#   end
# end

def reformat_languages(languages)
  oo_langs = languages.values.first
  func_langs = languages.values.last
  langs = oo_langs.merge(func_langs)
  populate_styles(langs, oo_langs, func_langs)
end

def populate_styles(languages, oo_langs, func_langs)
  languages.keys.each_with_object(languages) do |lang, languages|
    languages[lang][:style] = []
    languages[lang][:style] << :oo if oo_langs.has_key?(lang)
    languages[lang][:style] << :functional if func_langs.has_key?(lang)
  end
end

