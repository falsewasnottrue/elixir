defmodule Monad do
  def map([], _), do: []
  def map([h | t], func), do: [func.(h) | map(t, func)]

  def _filter(_, [], _), do: []
  def _filter(true, [h | t], p), do: [h | filter(t,p)]
  def _filter(false, [h | t], p), do: filter(t,p)

  def filter([], _), do: []
  def filter([h | t], p), do: _filter.(p.(h), [h | t], p)
end