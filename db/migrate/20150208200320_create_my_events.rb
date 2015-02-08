class CreateMyEvents < ActiveRecord::Migration
  def change
    create_table :my_events do |t|
      t.belongs_to :event
      t.string :name
      t.timestamps
    end
  end
end
