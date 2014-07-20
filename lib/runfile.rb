require './lib/menu'
require './lib/order'
require 'twilio-ruby'

# put your own credentials here
account_sid = 'AC902f53b9a662cc6878fd4e4a351eceec'
auth_token = '3ddd228fd4abe29ac40d31501aee369c'

@client = Twilio::REST::Client.new account_sid, auth_token

# attr_accessor :order

def opening_statement
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
	@order = Order.new(name)
	puts "Thanks. Take a look at some of the grub we've got!"
end

def show_menu
	@menu = Menu.new
	@menu.print_menu
end

def take_order
	puts "Which number meal would you like? Once you've chosen, then press RETURN"
	 	while !@order.orders.include?(0) do
			@order.save_order
		end
		@order.orders.pop
end

def calculate_bill total
	bill = @order.calculate_order(total)
	"That will be £#{bill} please."
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

def run_program
	opening_statement
	want_to_order
	show_menu
	take_order
	calculate_bill(@menu)
	# send_text
end















