def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    new_hash = new_hash.merge(language)
  end

#   new_hash = languages.values.inject {|hash, elem| hash.merge(elem)}

  new_hash.each do |language_n, attr|
    attr[:style] = []
    languages.each do |style, language|
      attr[:style] << style if language.has_key?(language_n)
    end
  end
end