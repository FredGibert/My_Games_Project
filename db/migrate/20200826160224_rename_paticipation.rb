class RenamePaticipation < ActiveRecord::Migration[6.0]
  def change
    rename_table :paticipations, :participations
  end
end
