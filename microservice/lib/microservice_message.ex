defmodule Responder do
  
  def start do
    loop()
    end
  
  def loop do
    receive do 
      {:responder, from} -> send(from, {"", self()})
    end
  end
end