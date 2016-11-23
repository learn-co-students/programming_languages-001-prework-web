def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, prog_langs|
    prog_langs.each do |type, val|
      new_hash[type] = val
      new_hash[type][:style] = []
    end
  end

  languages.each do |styles, prog_langs|
    prog_langs.each do |type, val|
      new_hash[type][:style] << styles
    end
  end
  return new_hash
end

  # :oo => {
  #   :ruby => {
  #     :type => "interpreted"
  #   },

    # :ruby => {
    #   :type => "interpreted",
    #   :style => [:oo]
    # },
