defmodule MicroserviceTest do
  use ExUnit.Case
  doctest Microservice

  test "it responds to a message" do
    string = spawn(String, :start, [])
    send(string, {"this is what I want to say", self()})
    assert_receive {:string, ^string}
  end
  # test "it responds to and upcases message" do

  # end
end
