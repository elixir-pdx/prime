defmodule Prime do

  def nth_prime(number) do
    List.last(Stream.iterate(1, &(next_prime(&1+1))) |> Enum.take(number))
  end

  def next_prime(number) do
    cond do
      is_prime(number) -> 
        number
      true -> 
        next_prime(number+1)
    end
  end
    

  def nth_prime(number, acc) do
  end 

  def categorize([numbers]) do
    {[], []}
  end

  def is_prime([first_num | other_nums]) do
      IO.puts("Got a list starting with #{first_num} and ending wth #{other_nums}")
      false
  end

  def is_prime([]) do
    IO.puts("Got a list and it's empty.")
    true
  end

  def is_prime(number) do
      IO.puts("Got the number #{number}.")
      case number do
        1 -> true
        2 -> true
        3 -> true
        other -> not Enum.any?( Enum.map( Enum.to_list(2..round(:math.sqrt(other))), fn x -> rem(other, x) == 0 end ))
        #other -> mod_iterator(other, 2) 
    end
  end

  defp is_divisible(num, div) do
    rem(num, div) == 0
  end

  defp mod_iterator(number, div) do
    IO.puts("Number #{number}, Div #{div}")
    cond do
      div > number -> true
      other -> rem(number, other) == 0 or mod_iterator(number, other+1) 
    end
  end

end

