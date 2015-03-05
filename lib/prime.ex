defmodule Prime do


  def nth_prime(n) do
    primes(n, 1, [])
  end

  def primes(n, curr, acc) do

    if is_prime?(curr), do: acc = [curr | acc]

    cond do
      length(acc) == n ->
        curr
      true ->
        primes(n, curr + 1, acc)
    end
  end

  def is_prime?(1), do: false
  def is_prime?(2), do: true
  def is_prime?(3), do: true
  def is_prime?(n), do: Enum.to_list(2..div(n,2)) |> Enum.all?( &(rem(n, &1) != 0) )

end
