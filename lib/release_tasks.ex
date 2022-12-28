defmodule Ectoprint.ReleaseTasks do
  @app :ectoprint

  import Ectoprint.Factory

  def seed_data do
    for _ <- 0..100, do: card_factory()
  end
end
