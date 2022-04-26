#this is a runner file so there is no spec file for it

require_relative 'english_to_braille'
require_relative 'translator'
require 'pry'

input_file = File.open(ARGV[0], "r")
message_reader = input_file.read.strip
input_file.close

translate = Translator.new(message_reader)

writer = File.open(ARGV[1], "w")
writer.write(translate.split_lines)
writer.close

puts "Created '#{ARGV[1]}' containing #{translate.char_length} characters"
