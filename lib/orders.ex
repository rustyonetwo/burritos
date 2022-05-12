defmodule Burritos.Orders do
  @moduledoc false

  alias Burritos.Order
  alias Burritos.Repo
  # import Ecto.Query

  def new() do
    {:ok, %Order{id: id}} = Repo.insert(%Order{})
    {:ok, id}
  end
end
