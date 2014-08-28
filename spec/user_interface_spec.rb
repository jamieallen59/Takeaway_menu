require 'user_interface'

describe UserInterface do

	let(:order) 					{ double :Order, :name= => "Jamie", name: "Jamie", orders:[1, 3, 3, 2]}
	let(:user_interface)	{ UserInterface.new(order)											  										}


	it 'should print an opening statement' do
		expect(user_interface).to receive(:puts).and_return("WELCOME TO BIG MOMMA'S TRUCKIN' CLUCKIN' TAKEAWAY!")
		user_interface.opening_statement
	end

	it 'should ask the user if they want to order, then take their answer as an input' do
		allow(user_interface).to receive(:gets).and_return('yes')
		user_interface.want_to_order
		expect(user_interface.want_to_order).to eq user_interface.add_order(order)
	end

	it 'should create a new order using the persons name' do
		allow(user_interface).to receive(:gets).and_return('Jamie')
		user_interface.add_order(order)
		expect(user_interface.order.name).to eq "Jamie"
	end

	# it 'should be able to take an order' do
	# 	allow(order).to receive(:take_order).and_return('3')
	# 	user_interface.take_order
	# 	expect(person_1.orders).to eq([3])
	# end
end
