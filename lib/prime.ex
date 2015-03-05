defmodule Prime do

  def nth_prime(1) do
    2
  end

  def nth_prime(n) do
    nth_prime_helper([2], 3, n)
  end

  def nth_prime_helper(primes, current, n) do
    cond do
      length(primes) == n ->
        hd primes
      is_rel_prime(current, primes) ->
        nth_prime_helper([ current | primes ], current + 2, n)
      true ->
        nth_prime_helper(primes, current + 2, n)
    end
  end

  def is_rel_prime(_, []) do
    true
  end

  def is_rel_prime(test, [ x | xs ]) do
    rem(test, x) != 0 && is_rel_prime(test, xs)
  end
end
