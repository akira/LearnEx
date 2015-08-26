defmodule LearnEx.SolutionController do
  use LearnEx.Web, :controller

  alias LearnEx.Problem
  alias LearnEx.Solution

  plug :scrub_params, "solution" when action in [:create, :update]

  def create(conn, %{"solution" => solution_params}) do
    changeset = Solution.changeset(%Solution{}, solution_params)

    case Repo.insert(changeset) do
      {:ok, _solution} ->
        conn
        |> put_flash(:info, "Solution created successfully.")
        |> redirect(to: solution_path(conn, :index))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

end
