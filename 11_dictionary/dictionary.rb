class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add(entry)

		entry.class == String ? @entries[entry] = nil : entry.each {|key, value| @entries[key] = value}
		# @entries.merge!(options) if options.class == Hash
		# @entries[options] = nil if options.class == String
	end

	def keywords
		@entries.keys.sort
	end

	def include?(word)
		if (word == nil)
			return nil
		end
		if @entries.has_key?(word)
			true
		else
			false
		end
	end

	def find(key)
		temp = {}
		@entries.keys.each do |k|
			if k.include?(key)
				temp[k] = @entries[k]
			end
		end
		if temp.length > 0
			return temp
		else 
			return ""
		end
		if @entries.has_key?(key)
			@entries.select
		else
			""
		end
	end

	def printable
		temp = []
		keywords.inject(temp) {|t, k| t << "[#{k}] \"#{@entries[k]}\""}.join "\n"
	end
end