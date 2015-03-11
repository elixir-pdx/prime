
defmodule Prime do
  def is_prime?(n) do
    Enum.to_list(2..round(:math.sqrt(n)))
      |> Enum.any?(fn (x) -> rem(n, x) == 0 end)
      |> Kernel.not
  end
end

defmodule PrimeRecursive do
  def nth_prime(1),   do: 2
  def nth_prime(2),   do: 3
  def nth_prime(nth), do: nth_prime(nth, 3, 2)
  def nth_prime(nth, current, count) do
    case Prime.is_prime?(current) do
      true when count == nth -> current
      true  -> nth_prime(nth, current + 2, count + 1)
      false -> nth_prime(nth, current + 2, count)
    end
  end
end

defmodule PrimeStream do
  def nth_prime(1),  do: 2
  def nth_prime(nth) do
    Stream.iterate(3, fn (x) -> next_prime(x + 2) end)
      |> Enum.take(nth - 1)
      |> List.last
  end

  def next_prime(n) do
    case Prime.is_prime?(n) do
      true  -> n
      false -> next_prime(n + 1)
    end
  end
end
