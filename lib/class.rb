class Class
	def my_attr_accessor *args
		args.each do |arg|
			#getter
			self.class_eval("def #{arg};@#{arg};end")

			#setter
			self.class_eval("def #{arg}=(val);@#{arg}=val;end")
		end

	end

end


class Person
	my_attr_accessor :name, :age

end