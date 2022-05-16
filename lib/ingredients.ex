defmodule Burritos.Ingredients do
  @moduledoc """
  Context for interacting with Ingredients
  """

  import Ecto.Query
  alias Burritos.Repo

  def show do
    query =
      from i in "ingredients",
        select: i.name

    Repo.all(query)
    |> IO.inspect()
  end
end
