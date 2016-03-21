require 'pry'

def reformat_languages(languages)
new_hash={}

languages.each do |style,languagHash|
    languagHash.each do |language,data|
    data.each do |type,value|
     if new_hash[language] != nil
        new_hash[language][:style]<< style
       break
      end
      new_hash[language]={type=>value, :style => [style]}
    end
    end
   end
  new_hash
end


#Turn language to first level of keys
#Turn data to a key value pair of second level of the new hash
# Add Style to be the value of second level of the new hashvalue of

start = {
  :oo => {
          :ruby =>       {:type => "interpreted"},
          :javascript => {:type => "interpreted"},
          :python =>     {:type => "interpreted"},
          :java =>       {:type => "compiled"}
           },
  :functional =>{
          :clojure =>{     :type => "compiled"},
          :erlang => {     :type => "compiled"},
          :scala => {      :type => "compiled"},
          :javascript =>{  :type => "interpreted"}
               }
}

ending ={
  :ruby => {      :type => "interpreted",  :style => [:oo]},
  :javascript =>{ :type => "interpreted",  :style => [:oo, :functional]},
  :python => {    :type => "interpreted",  :style => [:oo] },
  :java => {      :type => "compiled",     :style => [:oo]},
  :clojure => {   :type => "compiled",     :style => [:functional]},
  :erlang => {    :type => "compiled",     :style => [:functional]},
  :scala => {     :type => "compiled",     :style => [:functional]}

}