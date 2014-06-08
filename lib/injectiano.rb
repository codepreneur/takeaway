class Array

	# block.call approach
	def injectiano(accumulator=self.delete_at(0), &block)
		self.each {|item| accumulator = block.call(accumulator,item)}
		accumulator
	end

end