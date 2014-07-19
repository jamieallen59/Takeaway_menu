class Order

attr_accessor :orders

	def initialize name
		@name = name
		@orders = []
	end

	def has_a_name?
		!@name.empty?
	end

	def take_input
		gets.chomp.to_i
	end

	def save_order
		@orders << take_input
	end

	def calculate_order total
		prices = orders.map { |order| total.current_menu[order.to_s] }
		prices.inject { |full, price| full + price }
	end

end
