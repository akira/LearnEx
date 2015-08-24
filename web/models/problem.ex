defmodule LearnEx.Problem do
  use Ecto.Model

  schema "problems" do
    field :name
    field :phone

    timestamps
  end
end