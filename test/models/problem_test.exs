defmodule LearnEx.ProblemTest do
  use LearnEx.ModelCase

  alias LearnEx.Problem

  @valid_attrs %{approved: true, description: "some content", tags: %{}, tests: %{}, times_solved: 42, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Problem.changeset(%Problem{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Problem.changeset(%Problem{}, @invalid_attrs)
    refute changeset.valid?
  end
end
