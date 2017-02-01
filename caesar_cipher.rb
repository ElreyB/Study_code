#Caesar Cipher
def caesar_cipher(string, shift)
	lowercase = ("a".."z")
	uppercase = ("A".."Z")
	ciphered_string = " "
	string.each_char do |letter|
			if lowercase.include?(letter)
				shift.times {letter = letter.next}
				if letter.length == 2
					letter = letter[-1]
				end
				ciphered_string<<letter
			elsif uppercase.include?(letter)
				shift.times {letter = letter.next}
				if letter.length == 2
					letter = letter[-1]
				end
				ciphered_string<<letter
			else
				ciphered_string<<letter
			end
			ciphered_string
	end
	puts ciphered_string
end

caesar_cipher("What a string!", 5)
#  => "Bmfy f xywnsl!"
