require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    current_style = style
    langs.each do |lang, type_h|
      if new_hash.has_key?(lang) == false
        new_hash[lang] = {
          :type => type_h[:type],
          :style => [current_style]
        }
      else
        new_hash[lang][:style] << current_style
      end
    end
  end
  new_hash
end
