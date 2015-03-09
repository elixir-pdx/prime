defmodule PrimeTest do
  use ExUnit.Case

  test "n_prime 1" do
    assert Prime.nth_prime(1) == 2
  end

  test "n_prime 2" do
    assert Prime.nth_prime(2) == 3
  end

  test "n_prime 3" do
    assert Prime.nth_prime(3) == 5
  end

  test "n_prime 4" do
    assert Prime.nth_prime(4) == 7
  end

  test "n_prime 1000" do
    assert Prime.nth_prime(1000) == 7919
  end

  test "n_prime 5000" do
    assert Prime.nth_prime(5000) == 48611
  end
end
