class Array

	# block.call approach
	def injectiano(accumulator = nil,&block)
		collection = self.dup

		accumulator ||= collection.shift
		collection.each {|item| accumulator = block.call(accumulator,item)}
		accumulator
	end

	# yield approach
	def injectiano_yield(result=self[0])
		result == nil? collection = self.dup : self.drop(1)

		collection ||= collection.shift
		collection.each{|el| result = yield result, el}
		result
	end

	# recursive approach
	def injectiano_recursivo(result=self.shift,&block)
		# need to implement it
	end


end