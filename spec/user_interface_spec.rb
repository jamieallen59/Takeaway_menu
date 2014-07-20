require 'user_interface'

describe UserInterface do

	let(:user_interface)		{ UserInterface.new		}

	it 'should print an opening statement' do
		expect(user_interface).to receive(:puts).and_return("WELCOME TO BIG MOMMA'S TRUCKIN' CLUCKIN' TAKEAWAY!")
		user_interface.opening_statement
	end

	it 'should ask the user if they want to order and take an input' do
		# order = double :order
		allow(user_interface).to receive(:gets).and_return('yes')
		user_interface.want_to_order
		expect(user_interface.want_to_order).to eq user_interface.create_order
	end
	
	# it 'should create a new order using the persons name' do
	# 	allow(user_interface).to receive(:gets).and_return('Jamie')
	# 	user_interface.create_order
	# 	expect(user_interface.create_order).to eq Order.new('Jamie')

	# end


end