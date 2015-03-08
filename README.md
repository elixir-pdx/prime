__elixir-pdx/prime__

---
#Overview

This exercise is designed to be an introduction to both Elixir and the basics of functional programming.

The challenge is to complete the implementation of the `Prime.nth_prime` function such that when called with a single integer argument it will return to the caller the Nth prime number. For instance, if called as `Prime.nth_prime(1000)` the result should be `7919`. Since the 1000th prime number is 7919.

**Prerequisites:**
* [elixir](http://elixir-lang.org/install.html)

---

#Getting Started

There are two different ways to start this project:

###1. Use the `mix` tool to bootstrap your project.

	$ cd ~/Repositories
	$ mix new prime
	$ cd prime

Then change the contents of `lib/prime.ex` to match:

```
defmodule Prime do	

	def nth_prime(1) do
		2
	end

	def nth_prime(number) do
		IO.puts("Called with #{number}")
		number
	end

	defp is_prime(number) do
		false
	end
	
end
```

and change the contents of `test/prime_test.exs` to match:

```
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
```

###2. Clone this repository.
	
	$ cd ~/Repositories
	$ git clone https://github.com/elixir-pdx/prime.git
	$ cd prime

#Hacking

You may find it helpful to play with your code in Elixir's `iex` interactive console. If you want to do that and autoload the console session with your code then you can do the following from the project root:

	$ iex -S mix

That will make sure that you're running `iex` inside your project's build environment.

#Building

To compile your project simply run this from the project root:

	$ mix compile

#Testing

To run the test suite defined in `test/prime_test.exs` then run this from the project root:

	$ mix test

If you got your project bootstrapped correction you should see something like the following:

```
lib/prime.ex:12: warning: function is_prime/1 is unused
Compiled lib/prime.ex
Generated prime.app
Called with 3
Called with 1000


  1) test nth_prime with 3 (PrimeTest)
     test/prime_test.exs:8
     Assertion with == failed
     code: Prime.nth_prime(3) == 5
     lhs:  3
     rhs:  5
     stacktrace:
       test/prime_test.exs:9



  2) test nth_prime with 1000 (PrimeTest)
     test/prime_test.exs:12
     Assertion with == failed
     code: Prime.nth_prime(1000) == 7919
     lhs:  1000
     rhs:  7919
     stacktrace:
       test/prime_test.exs:13

.

Finished in 0.05 seconds (0.05s on load, 0.00s on tests)
3 tests, 2 failures
```
