def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |a, b|
    b.each do |c, d|
      new_hash[c] = d
    end
  end
  languages.each do |e, f|
    f.each do |g, h|
      new_hash[g][:style] = [e]
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end
