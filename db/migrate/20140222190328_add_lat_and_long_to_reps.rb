class AddLatAndLongToReps < ActiveRecord::Migration
  def change
    add_column :reps, :latitude, :float
    add_column :reps, :longitude, :float
  end
end
