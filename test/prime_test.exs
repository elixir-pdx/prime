defmodule PrimeTest do
  use ExUnit.Case

  test "is_prime" do
    assert Prime.is_prime?(1) == false
    assert Prime.is_prime?(2) == true
    assert Prime.is_prime?(3) == true
    assert Prime.is_prime?(4) == false
    assert Prime.is_prime?(5) == true
    assert Prime.is_prime?(6) == false
    assert Prime.is_prime?(7) == true
    assert Prime.is_prime?(8) == false
    assert Prime.is_prime?(9) == false
    assert Prime.is_prime?(29) == true
    assert Prime.is_prime?(30) == false
  end

  test "n_prime" do

    assert Prime.nth_prime(1) == 2
    assert Prime.nth_prime(2) == 3
    assert Prime.nth_prime(3) == 5
    assert Prime.nth_prime(4) == 7
    assert Prime.nth_prime(5) == 11
    assert Prime.nth_prime(1000) == 7919
  end
end
