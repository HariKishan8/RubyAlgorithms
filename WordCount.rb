#!/usr/bin/ruby


def count_words(string)
	 h = Hash.new(0)
	 # using split at non word characters to find individual words and using a hash with key as the word and the value is its frequency
	 string.downcase.split(/\W+/).each do |w|
	  	h[w] = h[w] + 1
	 end
	 
	 #printing key, value of the hash which displays the frequency of each word
	 h.each do |key, value|
		puts "#{key} => #{value}"   
	 end

end

puts "Enter a string: "
string = gets
count_words(string)
#count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
#count_words "Doo bee doo bee doo"  # => {'doo' => 3, 'bee' => 2}
