require 'takeaway'

describe TakeAway do

	let(:takeaway) {TakeAway.new}
	
	it 'has menu prices when initialised' do
		expect(takeaway.prices).to eq({pizza: 5, burger: 3.20, pasta: 2.10})
	end
	
end