defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld

  test "division" do
    {:ok, result} = HelloWorld.div(2, 1)
    assert result == 2.0
  end
  test "division by zero" do 
    {:error, err} = HelloWorld.div(1,0)
    assert err == "attempt at division by zero"
  end
  test "greets the world" do
    assert HelloWorld.hello() == :world
  end
  test "pipes and strings" do
    import String
    val = 
      "jamison"
      |> reverse
      |> capitalize
      |> reverse
      
    assert val == "jamisoN"
  end
end
