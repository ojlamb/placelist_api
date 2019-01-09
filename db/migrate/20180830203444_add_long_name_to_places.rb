class AddLongNameToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :long_name, :string
  end
end
