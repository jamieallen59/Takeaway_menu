class Menu

	attr_accessor :current_menu

	def initialize
		@current_menu = {
			"1" => 9.99,
			"2" => 4.99,
			"3" => 35.99,
			"4" => 5.99,
			"5" => 8.99
		}
	end

	def print_menu
		print "\n
		1. Big Momma's fried chicken     £9.99\n
		2. Big Daddy's jerk chicken      £4.99\n
		3. Hoisin crispy owl             £35.99\n
		4. Artificial bacon (facon)      £5.99\n
		5. Quiches Lorraine              £8.99\n"
	end


end
