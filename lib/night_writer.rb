#this is a runner file so there is no spec file for it
require 'pry'

input_file = File.open(ARGV[0], "r")
message_reader = input_file.read.strip
input_file.close

chars = message_reader.length

writer = File.open(ARGV[1], "w")
writer.write(message_reader)
writer.close

puts "Created '#{ARGV[1]}' containing #{chars} characters"
