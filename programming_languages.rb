require 'pry'

def reformat_languages(lang)
  new_hsh = {}
  lang.each do | prog_style, value |
    value.each do | language, type |
      if !new_hsh.keys.include? (language)
        new_hsh[language] = { type: value[language][:type], style: [prog_style]}
      else
        new_hsh[language][:style] << prog_style
      end
    end
  end
  puts new_hsh
  new_hsh
end