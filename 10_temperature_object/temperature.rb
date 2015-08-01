class Temperature
	attr_accessor :f

	def initialize(opt)
		opt.each do |key, value|
			if (key == :f)
				@f = value
			else
				@f = value * 9.0 / 5.0 + 32
			end
		end
	end

	def self.from_celsius(c)
      self.new(:c => c)
  end

  def self.from_fahrenheit(f)
      self.new(:f => f)
  end

	def in_fahrenheit
		@f
	end

	def in_celsius
		(@f - 32) * 5.0 / 9.0
	end
end

class Celsius < Temperature
    def initialize(c)
        super(c: c)
    end
end

class Fahrenheit < Temperature
	def initialize(f)
		super(f: f)
	end
end