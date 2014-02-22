class CreateReps < ActiveRecord::Migration
  def change
    create_table :reps do |t|
      t.string :district
      t.string :partypol
      t.string :fname
      t.string :lname
      t.string :longname
      t.string :city_state_zip
      t.string :twitter
      t.string :facebook_personal
      t.string :you_tube
      t.string :linked_in
      t.string :google_plus

      t.timestamps
    end
  end
end
