require "yaml"
require "pry"
# require modules here


def load_library(file_path)
emoticons = YAML.load_file(file_path)

new_hash = {}

  emoticons.each do |emo_name, faces|
   new_hash[emo_name] = {}
   new_hash[emo_name][:english] = faces[0]
   new_hash[emo_name][:japanese] = faces[1]
  #binding.pry
  end
  new_hash
end


 def get_english_meaning(file_path, emoticon)
   new_hash = load_library(file_path)
   new_hash["get_meaning"][emoticon]
   #binding.pry
   #if result == nil
     #result = "Sorry, that emoticon was not found" 
   #end
   #result
 end

def get_japanese_emoticon(file_path, emoticon)
  new_hash = load_library(file_path)
  result = new_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end
