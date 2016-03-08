require 'pry'

def reformat_languages(languages)
  new_format = {}
  languages.each do |style_key, category|
    category.each do |name, detail|
      new_format[name] = detail
    end
  end
  new_format.each do |new_name, new_detail|
    new_format[new_name][:style] = []
  end
  new_format.each do |new_name, new_detail|
    languages.each do |style_key, category|
      category.each do |name, detail|
        if new_name == name
          new_format[new_name][:style] << style_key
        end
      end
    end
  end
  new_format
end
