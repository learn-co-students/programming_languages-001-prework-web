def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |style, lang_and_type|

    languages[style].each do |lang, t_k_and_v|

      languages[style][lang].each do |t_k, t_v|
        new_hash[lang] = {t_k => t_v, style: []}

      end
    end
  end

  languages.each do |style, lang_and_type|

    languages[style].each do |lang, t_k_and_v|

      languages[style][lang].each do |t_k, t_v|

        new_hash[lang][:style] << style
      end
    end
  end

new_hash

end
