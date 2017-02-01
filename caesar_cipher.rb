#Caesar Cipher
def caesar_cipher(string, shift)
	lowercase = ("a".."z")
	uppercase = ("A".."Z")
	ciphered_string = " "
	# counter = 0
	# while counter < string.length
	# 	letter = string[counter] # "W"
	string.scan (/./) do |letter|
		if lowercase.include?(letter)
			shift.times {letter = letter.next}
			if letter.length == 2
				letter = letter[-1]
			end
			ciphered_string<<letter
		end
	end

		
	# end
	puts ciphered_string
end

caesar_cipher("z", 1)
#  => "Bmfy f xywnsl!"
