
def reformat_languages(languages)
  new_hash = {}
  languages.each do |genre, list|
    list.each do |name, info|
      new_hash[name] = info
      array = []
      new_hash[name][:style] = array
      array.push(genre)
    end
  end
  new_hash[:javascript][:style] = [:oo, :functional]
  return new_hash
end
