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

	it 'can place order' do
		allow(takeaway).to receive(:dish).and_return(:pizza)
		allow(takeaway).to receive(:quantity).and_return(5)
		takeaway.place_order
		expect(takeaway.price_list).to eq [25]
	end

	it 'can calculate total' do
		allow(takeaway).to receive(:dish).and_return(:pizza)
		allow(takeaway).to receive(:quantity).and_return(5)
		takeaway.place_order
		expect(takeaway.calculate_total).to eq 25
	end

	it 'knows what time it is in 1 hour from now' do
    time = Time.now + (60 * 60)
    expect(takeaway.time_in_one_hour.to_i).to eq time.to_i
  end

	it 'sends text message with the order info' do
		message = 'something'
		expect(takeaway).to receive(:send_text).with(message)
		takeaway.send_text(message)
	end
	
end