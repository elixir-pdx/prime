defmodule Prime do


  def nth_prime(1), do: 2
  def nth_prime(2), do: 3
  def nth_prime(n), do: primes(n, 3, 1)

  def primes(n, curr, size) do

    if is_prime?(curr), do: size = size + 1

    cond do
      size == n ->
        curr
      true ->
        primes(n, curr + 2, size)
    end
  end

  def is_prime?(1), do: false
  def is_prime?(2), do: true
  def is_prime?(3), do: true
  def is_prime?(n) do
    Enum.to_list(2..div(n,2))
      |> Enum.all?( &(rem(n, &1) != 0) )
  end

end
