defmodule LearnEx.Repo.Migrations.CreateSolutions do
  use Ecto.Migration

  def change do
    create table(:solutions) do
      add :user_id,     references(:users)
      add :problem_id,  references(:problems)
      add :code,        :text

      timestamps
    end
  end
end
