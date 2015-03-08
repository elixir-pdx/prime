defmodule Prime do	
	def nth_prime(1) do
		2
	end

	def nth_prime(number) do
		IO.puts("Called with #{number}")
		number
	end

	defp is_prime(number) do
		false
	end
end
