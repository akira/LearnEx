defmodule LearnEx.Problem do
  use LearnEx.Web, :model

  schema "problems" do
    field :approved, :boolean, default: false
    field :title, :string
    field :times_solved, :integer
    field :tests, {:array, :string}
    field :description, :string
    field :difficulty, :string
    field :tags, {:array, :string}

    timestamps
  end

  @required_fields ~w(approved title times_solved tests description difficulty tags)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
