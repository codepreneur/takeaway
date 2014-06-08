class TakeAway

	def initialize
		@total = 0
		@price_list ||= []
		@prices = {pizza: 5, burger: 3.20, pasta: 2.10}
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