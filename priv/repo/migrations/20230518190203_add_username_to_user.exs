defmodule Bmvp.Repo.Migrations.AddUsernameToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :username, :citext, null: true
    end

    create(unique_index(:users, :username))
  end
end
