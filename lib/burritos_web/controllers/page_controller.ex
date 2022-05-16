defmodule BurritosWeb.PageController do
  use BurritosWeb, :controller

  def index(conn, _params) do
    json(conn, %{burritos: "muy bueno!"})
  end

  def show(conn, %{order_id: order_id} = _params) do
    contents = Burritos.get(order_id) |> Enum.join(", ")
    json(conn, %{contents: contents})
  end

  def list(conn, _params) do
    json(conn, %{ingredients: Burritos.Ingredients.show()})
  end

  def new(conn, _params) do
    {:ok, order_id} = Burritos.Orders.new()
    json(conn, %{order_id: order_id})
  end

  def create(_conn, %{order_id: order_id, ingredient: ingredient}) do
    {:ok, _} = Burritos.new(order_id, ingredient)
  end

  def remove(_conn, %{order_id: order_id, ingredient: ingredient}) do
    Burritos.remove(order_id, ingredient)
  end
end
