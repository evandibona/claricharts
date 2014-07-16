## Chunkypng.com
##require "chunky_png" 
#
#png = '.png' 
#keys_dir = "keys/"
#fingerings_dir = "img_fingerings/"
#base = ChunkyPNG::Image.from_file(keys_dir + "base.png") 
#
#Clarinet.notes.each do |note, info| 
#  puts "Building #{note}..." 
#  note_img = base
#  fingering = info[:fingers][0] 
#  fingering.each do |key| 
#    key_img_file = keys_dir + key.to_s + png
#    key_img = ChunkyPNG::Image.from_file(key_img_file) 
#    note_img.compose!(key_img) 
#    puts "\t\tmerged " + key.to_s 
#  end
#  note_img.save(fingerings_dir + note + png) 
#end
