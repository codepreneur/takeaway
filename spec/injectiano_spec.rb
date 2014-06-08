require 'injectiano'

describe 'Injectiano' do

	it 'sums all elements of array' do
		expect([1,2,3,4].injectiano{|result,el| result + el}).to eq 10
	end

	it 'substracts all elements of array via yield approach' do
		expect([1,2,3,4].injectiano_yield{|result,el| result - el}).to eq -8
	end	

	it 'substracts elements of array with starting value of 5' do
		expect([1,2,3,4].injectiano(5){|result,el| result - el}).to eq -5
	end

end