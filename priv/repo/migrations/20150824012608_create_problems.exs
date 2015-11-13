defmodule LearnEx.Repo.Migrations.CreateProblems do
  use Ecto.Migration

  def change do
    create table(:problems) do
      add :approved,     :boolean, default: false
      add :title,        :string
      add :times_solved, :integer
      add :tests,        {:array, :string}
      add :description,  :text
      add :difficulty,   :string
      add :tags,         {:array, :string}

      timestamps
    end
  end
end
