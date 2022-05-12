defmodule Burritos.Burrito do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset
  alias Burritos.Repo

  schema "burritos" do
    belongs_to :order, Burritos.Order
    has_one :ingredient, Burritos.Ingredient, foreign_key: :name
    timestamps(type: :utc_datetime_usec)
  end

  def changeset(burrito, params) do
    %{order_id: _order_id, name: name} = params

    burrito
    |> Repo.preload([:ingredient])
    |> cast(params, [:order_id])
    |> put_assoc(:ingredient, %{name: name})
    |> foreign_key_constraint(:name)
    |> validate_required([:order_id])
  end
end
