class XmlDocument

	def initialize(item=false)
		@indents = item
	end

	def hello(args={}, &block)
		if args == {} && block == nil
			"<hello/>"
		elsif block == nil
			"<hello #{args.keys[0]}='#{args[args.keys[0]]}'/>"
		else
			if @indents
				"<hello>\n#{block.call}</hello>\n"
			else
				"<hello>#{block.call}</hello>"
			end
		end
	end

	def goodbye(&block)
		if block == nil
			"<goodbye/>"
		else
			if @indents
				"  <goodbye>\n#{block.call}  </goodbye>\n"
			else
				"<goodbye>#{block.call}</goodbye>"
			end
		end
	end

	def come_back(&block)
		if block == nil
			"<come_back/>"
		else
			if @indents
				"    <come_back>\n#{block.call}    </come_back>\n"
			else
				"<come_back>#{block.call}</come_back>"
			end
		end
	end

	def ok_fine(args)
		if @indents
			"      <ok_fine #{args.keys[0]}='#{args[args.keys[0]]}'/>\n"
		else
			"<ok_fine #{args.keys[0]}='#{args[args.keys[0]]}'/>"
		end
	end

	def send(tag_name)
		"<#{tag_name}/>"
	end
end