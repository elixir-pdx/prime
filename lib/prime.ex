defmodule Prime do

  def nth_prime(1),   do: 2
  def nth_prime(2),   do: 3
  def nth_prime(nth), do: nth_prime(nth, 3, 2)

  def nth_prime(nth, current, count) do
    case is_prime?(current) do
      true when count == nth ->
        current
      true  ->
        nth_prime(nth, current + 2, count + 1)
      false ->
        nth_prime(nth, current + 2, count)
    end
  end

  defp is_prime?(n) do
    Enum.to_list(2..round(:math.sqrt(n)))
      |> Enum.any?(fn (x) -> rem(n, x) == 0 end)
      |> Kernel.not
  end
end
