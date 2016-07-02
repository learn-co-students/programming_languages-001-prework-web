require "pry"

def reformat_languages(languages)
  new_langs = languages
  lang_arr = new_langs.collect {|style, v| v.keys}.flatten
  jav = lang_arr.select{|e| lang_arr.count(e) > 1}.uniq

  sty_new_langs = new_langs.each {|style, v|
    v.each {|lang,v1|
      if [lang] == jav && style == :functional
        new_langs[style][lang][:style] = [] << style << :oo
      else
        new_langs[style][lang][:style] = [] << style
      end
    }
      }
  

  langs = sty_new_langs.values[0].merge(sty_new_langs.values[1])

langs
#binding.pry
end

