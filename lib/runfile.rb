require './lib/menu'
require './lib/order'

attr_reader :order

def begin
	puts "Welcome to the greatest takeaway on earth"
end

def want_to_order
	puts "Would you like to place an order"
	answer = gets.chomp
		if answer == 'yes' or 'y'
			create_person
		else
			puts "Thank you. Come again."
			exit
		end
	end

def create_person
	puts "Ok, what's your name?"
	name = gets.chomp
	order = Order.new(name)
end

def show_menu
	menu = Menu.new
	menu.print_menu
end

def take_order
	puts 'What would you like? Press the number that correlates to your choice, then press RETURN'
	choice = order.take_input
		while choice == (1..5)
			order.save_order
		end
	puts 'thanks for the order'
end














