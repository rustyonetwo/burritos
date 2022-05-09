defmodule Burritos.Order do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "orders" do
    has_one :burrito, Burritos.Burrito
  end

  def changeset(order, params \\ %{}) do
    order
    |> cast(params, [:burrito])
    |> validate_required([:burrito])
  end
end
