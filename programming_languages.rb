def reformat_languages(languages)
  new_hash = {}
  styles = {}
  languages.each do |style, x|
    languages[style].each do |key, val| 
      !styles[key].is_a?(Array) ? styles[key] = [] << style : styles[key] << style
      new_hash[key] = val
      new_hash[key][:style] = styles[key]
    end
  end
  new_hash
end