defmodule Ping do
  def start do
    receive do
      {:pong, from} -> send(from, {:ping, self()})
    end
  end
end