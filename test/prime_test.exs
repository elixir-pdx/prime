defmodule PrimeTest do
  use ExUnit.Case

  test "nth_prime with 1" do
    assert Prime.nth_prime(1) == 2
  end

  test "nth_prime with 3" do
    assert Prime.nth_prime(3) == 5
  end

  test "nth_prime with 1000" do
    assert Prime.nth_prime(1000) == 7919
  end
end
