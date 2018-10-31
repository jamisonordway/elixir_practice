defmodule PingPongTest do
  use ExUnit.Case
  doctest PingPong

  test "it responds to pong with a ping" do
    ping = spawn(Ping, :start, [])
    send(ping, {:pong,self()})
    assert_receive {:ping,^ping}
  end
end
