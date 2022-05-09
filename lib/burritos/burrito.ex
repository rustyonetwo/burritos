defmodule Burritos.Burrito do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "burritos" do
    belongs_to :order, Burritos.Order
    has_many :ingredient, Burritos.Ingredient, foreign_key: :id
  end

  def changeset(burrito, params \\ %{}) do
    burrito
    |> cast(params, [:order_id, :ingredient])
    |> validate_required([:order_id, :ingredient])
  end
end
