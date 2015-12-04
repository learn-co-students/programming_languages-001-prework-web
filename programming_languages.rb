require 'pry'

def reformat_languages(languages)
  lang_hash = {}
  oo_langs =[]
  f_langs =[]

  languages.each do |type, data|
    data.each do |i, j|
      if type == :oo
        oo_langs << {i => j}
      elsif type == :functional
        f_langs << {i => j}
      end
    end
  end
  
  oo_style_arr = [:oo]
  f_style_arr = [:functional]
  both = [:oo, :functional]

  oo_langs.each do |i|
    i.each do |lang, data|
      lang_hash[lang] = data
      lang_hash[lang][:style] = oo_style_arr
    end
  end
  
  f_langs.each do |i|
    i.each do |lang, data|
      if lang_hash.include?(lang)
        lang_hash[lang][:style] = both
      else
        lang_hash[lang] = data
        lang_hash[lang][:style] = f_style_arr
      end
    end
  end
  
  lang_hash
end

=begin

oo == [{:ruby=>{:type=>"interpreted"}},
 {:javascript=>{:type=>"interpreted"}},
 {:python=>{:type=>"interpreted"}},
 {:java=>{:type=>"compiled"}}]


{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}
=begin
languages = {
:oo =>          {:ruby => {:type => "interpreted"},
                 :javascript => {:type => "interpreted"},
                 :python => {:type => "interpreted"},
                 :java => {:type => "compiled"}
                },
:functional =>  {:clojure => {:type => "compiled"},
                 :erlang => {:type => "compiled"},
                 :scala => {:type => "compiled"},
                 :javascript => {:type => "interpreted"}

                }
            {
=end