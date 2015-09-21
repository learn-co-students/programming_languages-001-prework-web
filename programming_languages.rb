require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  result = {}
  languages.each do |style, values|
    values.each do |language, attributes|
      if result[language].nil?
        result[language] = {}
      end
      attributes.each do |property, property_value|
        if property == :type
          result[language][:type] = property_value
        end
        if result[language][:style].nil?
          result[language][:style] = []
        end
        result[language][:style] << style 
      end
    end
  end
  result
end