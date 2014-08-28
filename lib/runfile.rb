require './lib/menu'
require './lib/order'
require './lib/user_interface'

@menu = Menu.new
@run = UserInterface.new(Order.new)

def run_program
	@run.opening_statement
	@run.want_to_order
	@run.show_menu
	@run.take_order
	@run.calculate_bill(@menu)
	# send_text
end
