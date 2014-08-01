class UserInterface

	require './lib/menu'
	require './lib/order'
	require 'twilio-ruby'

	account_sid = 'AC902f53b9a662cc6878fd4e4a351eceec'
	auth_token = '3ddd228fd4abe29ac40d31501aee369c'

	@client = Twilio::REST::Client.new account_sid, auth_token
	attr_reader :order

	def initialize(order)
		@order = order
	end

	def opening_statement
		puts "WELCOME TO BIG MOMMA'S TRUCKIN' CLUCKIN' TAKEAWAY!"
	end

	def want_to_order
		puts "You want to order some food?"
		@answer = gets.chomp
		if @answer.include? 'yes' || 'y' || 'Y'
				add_order(order)
			else
				puts "Thank you. Come again."
				exit
		end
	end

	def add_order(order)
		puts "Ok, can I take your name for the order?"
		@name = gets.chomp
		@order.name = @name
		puts "\nThanks. Take a look at our menu"
	end

	def show_menu
		@menu = Menu.new
		@menu.print_menu
	end

	def take_order
		puts "Which number meal would you like? Select a number then press RETURN. Press it again once you're finished."
		while !@order.orders.include?(0) do
			@order.save_order
		end
		@order.orders.pop
	end

	def calculate_bill total
		bill = @order.calculate_order(total)
		puts "Great. That will be £#{bill} please. \nYou'll receive a text with confirmation of your order."
	end

	def order_time
		time_now = Time.now + 3600
		@time = time_now.strftime("%H:%M")
	end

	def send_text
		@client.account.messages.create(
		  :from => '+441563262030',
		  :to => '+447872441306',
		  :body => "Yo. Your meal will be with you at abooout #{order_time}. Cheers big ears."
		)
	end

end











