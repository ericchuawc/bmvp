defmodule Bmvp.Repo.Migrations.AlterUsernameToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      modify :username, :citext, null: false
    end
  end
end
