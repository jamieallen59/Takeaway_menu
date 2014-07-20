require 'order'

describe Order do

	let(:person_1) 		{ Order.new "Jamie"		}


	it 'is initilaized with a name' do
		expect(person_1).to have_a_name
	end

	it 'take a user input' do
		allow(person_1).to receive(:gets).and_return("1")
		person_1.take_input
	end

	it 'should save input to an order' do
		allow(person_1).to receive(:gets).and_return("1")
		person_1.take_input
		person_1.save_order
		expect(person_1.orders).to eq [1]
	end

	it 'should calculate the total value of an order' do
		total = Menu.new
		allow(person_1).to receive(:gets).and_return("1")
		person_1.save_order
		allow(person_1).to receive(:gets).and_return("2")
		person_1.save_order
		expect(person_1.calculate_order(total)).to eq 14.98
	end

		it 'should calculate the total value of an order' do
		total = Menu.new
		allow(person_1).to receive(:gets).and_return("3")
		person_1.save_order
		allow(person_1).to receive(:gets).and_return("5")
		person_1.save_order
		expect(person_1.calculate_order(total)).to eq 44.98
	end

end