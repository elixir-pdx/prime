defmodule PrimeTest do
  use ExUnit.Case
  
  test "nth_prime empty" do
      assert Prime.nth_prime(1) == 1
  end

  test "nth_prime with 4" do
    assert Prime.nth_prime(100) == 523
  end

  test "is_prime" do
    assert Prime.is_prime([]) == true
    assert Prime.is_prime(4) == false
    assert Prime.is_prime(5) == true
  end

end

