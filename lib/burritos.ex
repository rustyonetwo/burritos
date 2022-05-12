defmodule Burritos do
  @moduledoc false

  alias Burritos.Burrito
  alias Burritos.Repo

  def new(order_id, ingredient) do
    # ingredient = Repo.get_by!(Burritos.Ingredient, id: ingredient_id)

    params = %{order_id: order_id, name: ingredient}

    Burrito.changeset(%Burrito{}, params)
    |> Repo.insert!()
  end
end
