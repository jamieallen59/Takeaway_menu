require 'user_interface'

describe UserInterface do

	let(:user_interface)		{ UserInterface.new		}

	it 'should print an opening statement' do
		expect(user_interface).to receive(:puts).and_return("WELCOME TO BIG MOMMA'S TRUCKIN' CLUCKIN' TAKEAWAY!")
		user_interface.opening_statement
	end

	it 'should ask the user if they want to order, then take their answer as an input' do
		allow(user_interface).to receive(:gets).and_return('yes')
		user_interface.want_to_order
		expect(user_interface.want_to_order).to eq user_interface.create_order
	end
	
	# it 'should create a new order using the persons name' do
	# 	allow(user_interface).to receive(:gets).and_return('Jamie')
	# 	user_interface.create_order
	# 	expect(user_interface.create_order).to eq Order.new('Jamie')
	# end

	it 'should be able to calculate the bill' do
		menu = Menu.new
		# order = Order.new("Jamie")
		# orders = double :orders
		# allow(user_interface.take_order).to receive(:gets).and_return(1)
		# allow(user_interface.take_order).to receive(:gets).and_return(0)
		# user_interface.take_order
		expect(calculate_bill(menu)).to receive(:puts).and_return("Great. That will be £9.99 please. \nYou'll receive a text with confirmation of your order.")
	end


end