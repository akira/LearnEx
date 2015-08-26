defmodule LearnEx.SolutionController do
  use LearnEx.Web, :controller

  alias LearnEx.Problem
  alias LearnEx.Solution

  plug :scrub_params, "solution" when action in [:create, :update]

  def new(conn, %{"problem_id" => problem_id}) do
    problem = Repo.get!(Problem, problem_id)
    changeset = Solution.changeset(%Solution{})
    render(conn, "new.html", changeset: changeset, problem: problem)
  end

  def create(conn, %{"solution" => solution_params, "problem_id" => problem_id}) do
    changeset = Solution.changeset(%Solution{}, solution_params)
    problem = Repo.get!(Problem, problem_id)
    case Repo.insert(changeset) do
      {:ok, _solution} ->
        conn
        |> put_flash(:info, "Solution created successfully.")
        |> redirect(to: problem_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset, problem: problem)
    end
  end

end
