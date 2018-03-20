require "yaml"
<<<<<<< HEAD

def load_library(library)
  lib = YAML.load_file(library)
  result = {}
  result['get_meaning'] = {} 
  result['get_emoticon'] = {}
  
  lib.each do |k,v|
    result['get_meaning'][v[1]] = k
    result['get_emoticon'][v[0]] = v[1] 
  end 
  result 
end

def get_japanese_emoticon(file_path, english_emoticon)
  library = load_library(file_path) 
  if library['get_emoticon'].keys.include?(english_emoticon)
    library['get_emoticon'][english_emoticon]
  else 
    "Sorry, that emoticon was not found"
  end 
=======
require 'pry'

def load_library
  lib = YAML.load_file('emoticons.yml')
  lib 
end

load_library

def get_japanese_emoticon
  # code goes here
>>>>>>> 8408f0f58f900b21ef0fc96dcf02e3b3a0ad777c
end

def get_english_meaning(file_path, japanese_emoticon)
  library = load_library(file_path)
  if library['get_meaning'].keys.include?(japanese_emoticon)
    library['get_meaning'][japanese_emoticon]
  else 
    "Sorry, that emoticon was not found"
  end 
end