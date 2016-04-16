class Fixnum
	NUMBER_TO_ROMAN = {
		1 => 'I',
		2 => 'II',
		3 => 'III',
		4 => 'IV',
		5 => 'V',
		6 => 'VI',
		7 => 'VII',
		8 => 'VIII',
		9 => 'IX',
		10 => 'X',
		40 => 'XL',
		50 => 'L',
		90 => 'XC',
		100 => 'C',
		400 => 'CD',
		500 => 'D',
		900 => 'CM',
		1000 => 'M'
	}
	# def to_roman
	# 	decimal = self
	# 	result = ''
	# 	# num = self
	# 	# result = ''
	# 	# if num == 1
	# 	# 	return 'I'
	# 	# elsif num < 4
	# 	# 	num.times { result += 'I' }
	# 	# elsif num < 10
			
	# 	# 	result = 'V' if num == 5
	# 	# end
	# 	# return result
	# 	if(self >= 5)
	# 		result << 'V'
	# 		decimal -= 5
	# 	end

	# 	result << 'I'*decimal
	# 	result
	# end

	def to_roman
		num_array = divide_num
		if num_array.length == 1
			return NUMBER_TO_ROMAN[self]
		else
			output_string = ""
			if num_array[0] = 1
				output_string.concat 'X'
			elsif num_array[0] = 2
				output_string.concat 'XX'
			elsif num_array[0] = 3
				output_string.concat 'XXX'
			elsif num_array[0] = 4
				output_string.concat 'XL'
			elsif num_array[0] = 5
				output_string.concat 'L'
			elsif num_array[0] = 6
				output_string.concat 'LX'
			elsif num_array[0] = 7
				output_string.concat 'LXX'
			elsif num_array[0] = 8
				output_string.concat 'LXXX'
			elsif num_array[0] = 9
				output_string.concat 'XC'
			end

			if num_array[1] == 0
				output_string.concat ''
			else
				output_string.concat NUMBER_TO_ROMAN[num_array[1]]
			end
			return output_string
		end
	end

	def divide_num
		number_length = self.to_s.length
		if number_length == 1
		  [self]
		elsif number_length == 2
		  units_place = self % 10
		  tenths_place = self / 10
		  [tenths_place, units_place] 
		end
	end
end