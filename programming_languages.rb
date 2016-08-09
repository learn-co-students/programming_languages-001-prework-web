def reformat_languages(languages)
  lang = Hash.new(0)
  languages.each do |style, name|
    name.each do |name, type|
      type.each do |type, ans|
        if lang[name] == 0
          lang[name]= {
            type: ans,
            style: [style]
          }
        else
          lang[name][:style] << style
        end
      end
    end
  end
  lang
end
