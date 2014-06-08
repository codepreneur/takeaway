require 'injectiano'

describe 'Injectiano' do

	it 'sums all elements of array' do
		expect([1,2,3,4].injectiano{|result,el| result + el}).to eq 10
	end
	
end