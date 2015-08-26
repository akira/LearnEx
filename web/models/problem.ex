defmodule LearnEx.Problem do
  use LearnEx.Web, :model

  alias LearnEx.Solution
  alias LearnEx.Repo

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

  def solve(problem, code) do
    test_results = run_tests(problem, code)
    IO.puts(Enum.join(test_results))
    if Enum.all?(test_results) do
      changeset = Solution.changeset(%Solution{}, %{problem_id: problem.id, code: code})
      case Repo.insert(changeset) do
        {:ok, _changset}   -> {:ok, test_results}
        {:error, changset} -> {:error, changset}
      end
    else
      {:tests_failed, test_results}
    end
  end

  def run_tests(problem, code) do
    results = Enum.map(problem.tests, fn test ->
      try do
        test
        |> String.replace("__", code)
        |> Safe.eval
        true
      rescue
        e in RuntimeError -> false
        e in [MatchError] -> false
      end
    end)
  end
end
