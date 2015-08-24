defmodule LearnEx.Repo.Migrations.CreateProblems do
  use Ecto.Migration

  def change do
    create table(:problems) do
      add :approved,     :boolean
      add :title,        :string
      add :times_solved, :integer
      add :tests,        :map
      add :description,  :text
      add :tags,         :map

      timestamps
    end
  end
end
