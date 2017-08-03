class AddAchievedToAdventures < ActiveRecord::Migration[5.0]
  def change
    add_column :adventures, :achieved, :boolean, default: false
  end
end
