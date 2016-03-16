require 'byebug'
def reformat_languages(languages)
  reformated = {}

  languages.each do |style, list_of_languages|
    list_of_languages.each do |language, type_hash|
      type_hash.each do |header, type_data|
        unless reformated[language].nil?
          reformated[language][:style] << style
        else
          reformated[language] = { style: [style], type: type_data}
        end
      end
    end
  end
  reformated
end
