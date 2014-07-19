require 'menu'

describe Menu do

	it 'should initialize with the menu hash' do
		menu = Menu.new
		expect(menu.current_menu).to eq ({"1" => 9.99, "2" => 4.99, "3" => 35.99, "4" => 5.99, "5" => 8.99})
	end
	
	it 'should be able to print a menu' do
		menu = Menu.new
		expect(menu).to receive(:puts).and_return("1. Big Momma's fried chicken     £9.99
	2. Big Daddy's jerk chicken      £4.99
	3. Hoisin crispy owl             £35.99
	4. Artificial bacon (facon)      £5.99
	5. Quiches Lorraine              £8.99")
		menu.print_menu
	end

end