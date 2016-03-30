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


def reformat_languages(language_hash)
  sorted_hash = create_empty_language_hash(language_hash)
  fill_new_hash(language_hash, sorted_hash)
end

def create_empty_language_hash(language_hash)
  languages = (language_hash[:oo].keys + language_hash[:functional].keys).uniq
  languages.each_with_object({}) { |language, sorted_hash| sorted_hash[language] = {type: "", style: []} }
end

def fill_new_hash(language_hash, sorted_hash)
  language_hash.each_with_object(sorted_hash) do |(style,langs), empty_hash|
    langs.each do |lang, type_info|
      sorted_hash[lang][type_info.keys.first] = type_info.values.first
      sorted_hash[lang].fetch(:style) << style
    end
  end
end

# GOAL
# {
#   :ruby => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :javascript => {
#     :type => "interpreted",
#     :style => [:oo, :functional]
#   },
#   :python => {
#     :type => "interpreted",
#     :style => [:oo]
#   },
#   :java => {
#     :type => "compiled",
#     :style => [:oo]
#   },
#   :clojure => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :erlang => {
#     :type => "compiled",
#     :style => [:functional]
#   },
#   :scala => {
#     :type => "compiled",
#     :style => [:functional]
#   }
# }






# def reformat_languages(hash)
#   new_hash = {}
#   hash.each do |style, langs|
#     langs.each do |lang, info|
#       if new_hash[lang] == nil
#         new_hash[lang] = info
#         new_hash[lang][:style] = [] << style
#       else
#         new_hash[lang][:style] << style
#       end
#     end
#   end
#   new_hash
# end
