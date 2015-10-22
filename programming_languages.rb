def reformat_languages(languages)
  languages_by_name = {}
  languages.each do |style, data|
    data.each do |name, type|
      languages_by_name[name] = {} if languages_by_name[name].nil?
      languages_by_name[name][:type] = type[:type]
      languages_by_name[name][:style] = languages_by_name[name][:style].nil? ? [style] : languages_by_name[name][:style] + [style]
    end
  end
  languages_by_name
end