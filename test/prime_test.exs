defmodule PrimeTest do
  use ExUnit.Case

  test "n_prime 1" do
    assert PrimeRecursive.nth_prime(1) == 2
  end

  test "n_prime 2" do
    assert PrimeRecursive.nth_prime(2) == 3
  end

  test "n_prime 3" do
    assert PrimeRecursive.nth_prime(3) == 5
  end

  test "n_prime 4" do
    assert PrimeRecursive.nth_prime(4) == 7
  end

  test "n_prime 1000" do
    assert PrimeRecursive.nth_prime(1000) == 7919
  end

  test "n_prime 5000" do
    assert PrimeRecursive.nth_prime(5000) == 48611
  end

  test "stream n_prime 1" do
    assert PrimeStream.nth_prime(1) == 2
  end

  test "stream n_prime 2" do
    assert PrimeStream.nth_prime(2) == 3
  end

  test "stream n_prime 3" do
    assert PrimeStream.nth_prime(3) == 5
  end

  test "stream n_prime 4" do
    assert PrimeStream.nth_prime(4) == 7
  end

  test "stream n_prime 1000" do
    assert PrimeStream.nth_prime(1000) == 7919
  end

  test "stream n_prime 5000" do
    assert PrimeStream.nth_prime(5000) == 48611
  end
end
