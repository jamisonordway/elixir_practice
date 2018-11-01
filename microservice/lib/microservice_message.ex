defmodule Responder do
  
  def start do
    loop()
    end
  
  def loop do
    receive do 
      {:"", from} -> send(from, {:string, self()})
    end
  end
end