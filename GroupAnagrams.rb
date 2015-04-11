#!/usr/bin/ruby

def combine_anagrams(words)
	#using group_by function to group the anagrams. 
	#chars.sort sorts the characters in a word
	anagram = words.group_by { |word| word.downcase.chars.sort }.values
	# printing each group	
	for i in 0..anagram.length-1
		print "anagram[" + i.to_s + "]: " 
		puts anagram[i]
	end
end

# A different method - Lengthy method
def combine_anagrams_method2(words)
	temp1 = Array.new
	temp1 = words.clone	# making a deep copy of the input 
	anagram = Array.new	
	i = 0
	while i < temp1.length			
		count = 0   # count the number of anagrams of a particular string say "cars"
		for j in i+1..(temp1.length - 1)
			if temp1[i].downcase.chars.sort.join == temp1[j].downcase.chars.sort.join 
				count = count + 1
				temp1[j],temp1[i+count] = temp1[i+count],temp1[j] # get all the anagrams to one place by swapping
			end
		end
		anagram.push([temp1[i..i+count]]) # pushing the array of anagrams into anagram array say ["cars", "racs", "scar"]
		i = i + count + 1
	end
	# printing each group
	for i in 0..anagram.length-1
		print "anagram[" + i.to_s + "]: " 
		puts anagram[i]
	end	
end

input = ['Cars', 'for', 'Potatoes', 'rAcs', 'four','scar', 'creams', 'scream']
combine_anagrams(input)
#  => output:  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]


