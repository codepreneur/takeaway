class Array

	# block.call approach
	def injectiano(accumulator=self.delete_at(0), &block)
		self.each {|item| accumulator = block.call(accumulator,item)}
		accumulator
	end

	# yield approach
	def injectiano_yield(result=self.delete_at(0))
		self.each{|el| result = yield result, el}
		result
	end

	# recursive approach
	def injectiano_recursivo(result=self.delete_at(0),&block)
		# need to implement it
	end


end