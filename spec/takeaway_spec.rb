require 'takeaway'

describe TakeAway do

	let(:takeaway) {TakeAway.new}
	
	it 'has menu prices when initialised' do
		expect(takeaway.prices).to eq({pizza: 5, burger: 3.20, pasta: 2.10})
	end

	it 'can print menu' do
		menu = "Welcome to Makers Take Away!\n"
		menu += "This is the list of dishes you can order:\n"
		menu += "pizza - 5.00 each\n"
		menu += "burger - 3.20 each\n"
		menu += "pasta - 2.10 each\n"
		menu += "type pizza, burger or pasta\n"
		expect(takeaway.print_menu).to eq menu
	end
	
end