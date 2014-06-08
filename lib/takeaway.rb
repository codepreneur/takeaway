require 'twilio-ruby'

class TakeAway

	TWILIO_SID = `echo $TWILIO_SID`
	TWILIO_TOKEN = `echo $TWILIO_TOKEN`
	TWILIO_NUMBER = `echo $TWILIO_NUMBER`
	TWILIO_USER_NUMBER = `echo $TWILIO_USER_NUMBER`

	def initialize
		@total = 0
		@price_list ||= []
		@prices = {pizza: 5, burger: 3.20, pasta: 2.10}
	end

	def calculate_total
		@total = price_list.inject(:+)
	end

	def prices
		@prices
	end

	def price_list
		@price_list
	end

	def place_order
		@dish = dish
		@quantity = quantity
		price_list << @prices[@dish] * @quantity
		calculate_total
	end

	def dish
		puts "What dish do you want?"
		gets.chomp.to_sym
	end

	def quantity
		puts "How many"
		gets.chomp.to_i
	end

	def print_menu
		menu = "Welcome to Makers Take Away!\n"
		menu += "This is the list of dishes you can order:\n"
		menu += "pizza - 5.00 each\n"
		menu += "burger - 3.20 each\n"
		menu += "pasta - 2.10 each\n"
		menu += "type pizza, burger or pasta\n"
	end

	def time_in_one_hour
		Time.now + (60*60)
	end

	def control_flow
		begin
		puts print_menu
		place_order
		while !@dish.nil? || !@quantity.nil?
			place_order
		end
		rescue NoMethodError => e 
			time = time_in_one_hour
			message = "Order Total: £#{@total}. Will be delivered before #{time.hour}:#{time.min}"
			puts message
			send_text(message)
		end
	end

	def send_text(text)
		@client = Twilio::REST::Client.new TWILIO_SID, TWILIO_TOKEN
		@client.account.messages.create(
			:from => TWILIO_NUMBER,
			:to => TWILIO_USER_NUMBER,
			:body => text
			)
	end


end