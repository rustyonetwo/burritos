defmodule Burritos do
  @moduledoc false
  import Ecto.Query
  alias Burritos.Burrito
  alias Burritos.Repo

  def new(order_id, ingredient) do
    params = %{order_id: order_id, name: ingredient}

    Burrito.changeset(%Burrito{}, params)
    |> Repo.insert!()
  end

  def get(order_id) do
    query =
      from b in "burritos",
        where: b.order_id == ^order_id,
        join: i in "ingredients",
        where: b.ingredient == i.id,
        select: i.name

    Burritos.Repo.all(query)
  end

  @spec remove(Integer.t(), String.t()) :: :ok | :error
  def remove(order_id, name) do
    ingredient_id = Repo.get_by("ingredients", name: name)

    query =
      from b in "burritos", where: b.order_id == ^order_id and b.ingredient == ^ingredient_id

    case Repo.delete(query) do
      {:ok, _} -> :ok
      {:error, _} -> :error
    end
  end
end
