class Timer
	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end
	def seconds=(raw)
		@seconds = raw
	end

	def time_string
		h = @seconds / 60 / 60
		m = @seconds / 60 % 60
		s = @seconds % 60
		pad(h)+':'+pad(m)+':'+pad(s)
	end

	def pad (num)
		num < 10 ? '0'+num.to_s : num.to_s
	end
end