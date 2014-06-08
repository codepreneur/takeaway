class TakeAway

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

end