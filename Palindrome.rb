#!/usr/bin/ruby

def palindrome?(string)
	 # using gsub to substitute all non word characters with ''
	 temp1 = string.downcase.gsub(/\W/, '')#.gsub("[[:punct:]]", '')
	 temp2 = temp1.reverse
	 if temp1 == temp2
	 	puts "true!! it is a palendrome"
	 else
		puts "false!! it is not a palendrome"	
	 end
end

puts "Enter a string: "
string = gets
palindrome?(string)


