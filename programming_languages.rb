require 'pry'

def languages 
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
end 

def list_languages(languages)
  language_array = []
  languages.values.map do |language_hashes| 
    language_hashes.keys.map do |key| 
      language_array << key 
    end 
  end 
  language_array.uniq
  # return [:ruby, :javascript, :python, :java, :clojure, :erlang, :scala]
end 


def find_languages(languages)
  language_array = list_languages(languages)
  language_hash = {}
  language_array.map do |language|
    language_hash[language] = {}
  end 
  language_hash
 #  returns {:ruby=>{},
 # :javascript=>{},
 # :python=>{},
 # :java=>{},
 # :clojure=>{},
 # :erlang=>{},
 # :scala=>{}}
end 

#method argument takes language name and returns the type 

def returns_type(language)
  languages
  return_type = ''
  languages.values.map do |language_hash|
    language_hash.map do |language_key, type| 
      if language_key == language 
       return_type = type.values.first
      end 
    end 
  end 
  return_type
end 

returns_type(:ruby)

def returns_style(language)
  languages 
  style_output = []
  languages.each do |style, language_hash| 
    if language_hash.keys.include?(language) 
      style_output << style 
    end 
  end 
  style_output
end

def reformat_languages(languages)
  languages
  list_all = list_languages(languages)
  hash_output = find_languages(languages)
  list_all.each do |language|
    hash_output[language][:type] = returns_type(language)
    hash_output[language][:style] = returns_style(language)
  end 
  hash_output
end

