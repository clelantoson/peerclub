class AddCoordinatesToGroup < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :latitude, :float
    add_column :groups, :longitude, :float
  end
end
