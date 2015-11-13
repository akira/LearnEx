defmodule LearnEx.SolutionController do
  use LearnEx.Web, :controller

  alias LearnEx.Problem
  alias LearnEx.Solution

  plug :scrub_params, "solution" when action in [:create, :update]

  def new(conn, %{"problem_id" => problem_id}) do
    problem = Repo.get!(Problem, problem_id)
    changeset = Solution.changeset(%Solution{})
    render(conn, "new.html", changeset: changeset, test_results: [], problem: problem)
  end

  def create(conn, %{"solution" => solution_params, "problem_id" => problem_id}) do
    changeset = Solution.changeset(%Solution{}, solution_params)
    problem = Repo.get!(Problem, problem_id)
    case Problem.solve(problem, solution_params["code"]) do
      {:ok, test_results} ->
        render(conn, "new.html", test_results: test_results, changeset: changeset, problem: problem)
      {:tests_failed, test_results} ->
        render(conn, "new.html", test_results: test_results, changeset: changeset, problem: problem)
      {:error, changeset} ->
        render(conn, "new.html", test_results: [], changeset: changeset, problem: problem)
    end
  end

end
