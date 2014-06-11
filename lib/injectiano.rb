class Array

	# block.call approach
	def injectiano(accumulator=0)
		self.each {|item| accumulator = block.call(accumulator,item)}
		accumulator
	end

	# yield approach
	def injectiano_yield(result=0)
		self.each{|el| result = yield result, el}
		result
	end

	# recursive approach
	def injectiano_recursivo(result=self.shift,&block)
		# need to implement it
	end


end