def reformat_languages(languages)
  new_hash = {}

  languages.each do |programming_style, language_list|

    #Fetch language names
    language_list_names = language_list.keys

    language_list_names.each do |language_name|
      if new_hash[language_name].nil?
        new_hash[language_name] = { :type => language_list[language_name][:type] }
        new_hash[language_name][:style] = [] 
      end

      new_hash[language_name][:style] << programming_style
    end


  end

  new_hash
end
