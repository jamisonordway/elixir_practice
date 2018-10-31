defmodule HelloWorld do
  @moduledoc """
  Documentation for HelloWorld.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HelloWorld.hello()
      :world

  """
  def div(a, 0) do
    {:error, "attempt at division by zero"}
  end

  def div(a, b) do
    {:ok, a / b}
  end

  def hello do
    :world
  end
end
