class AddRepEmail < ActiveRecord::Migration
  def change
    add_column :reps, :email, :string
  end
end
