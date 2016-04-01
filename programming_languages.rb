def reformat_languages(languages)
 newlang = {}
   languages.each do |style, info|
     info.each do |language, type|
       newlang[language] = type
       newlang[language][:style] = []
     end
   end
   languages.each do |style, info|
     info.each do |language, type|
       if style == :oo
         newlang[language][:style] << :oo
       else
         newlang[language][:style] << :functional
       end
     end
   end
   newlang
end
