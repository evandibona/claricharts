usage         'fgen [options]' 
aliases       :fg, :fingerings
summary       'Builds Fingerings' 
description   'Uses a collection of key images(png) to build fingering diagrams.'

flag    :h, :help, 'show help for this command' do |value, cmd| 
  puts "Help message" 
  exit 0
end

run do |opts, args, cmd| 
  print opts
  puts "\n"
  print args
  generate_fingerings('content/images/keys/', 'content/images/fingerings/') 
end

def generate_fingerings(keys_in, charts_out) 
  require "chunky_png" 
  require './lib/fingerings.rb' 
  
  png = '.png' 
  keys_dir = keys_in
  fingerings_dir = charts_out
  
  Clarinet.notes.each do |note, info| 
    puts "Building #{note}..." 
    note_img = ChunkyPNG::Image.from_file(keys_dir + "base.png") 
    fingering = info[:fingers][0] 
    fingering.each do |key| 
      key_img_file = keys_dir + key.to_s + png
      key_img = ChunkyPNG::Image.from_file(key_img_file) 
      note_img.compose!(key_img) 
      puts "\t\tmerged " + key.to_s 
    end
    note_img.save(fingerings_dir + note + png) 
    end
end
