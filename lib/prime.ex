defmodule Prime do

  def upto(list, x) do
    list |> Stream.take_while &(&1 <= x)
  end

  def naturals, do: Stream.iterate(1, &(&1+1))

  def from(list, x) do
    list |> Stream.drop_while &(&1 < x)
  end

  def does_not_divide(divisors, x) do
    divisors |> Stream.map(&(rem(x, &1) != 0)) |> Enum.all?
  end

  def primes do
    Stream.transform(naturals |> from(2), [],
      fn current, primes_so_far ->
        if(primes_so_far |> upto(:math.sqrt(current)) |> does_not_divide(current)) do
          {[current], primes_so_far ++ [current]}
        else
          {[], primes_so_far}
        end
    end)
  end

  def nth_prime(number) do
    primes |> Enum.take(number) |> List.last
  end
end
