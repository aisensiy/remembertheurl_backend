class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.text :url
      t.text :title
      t.datetime :start_at
      t.integer :duration

      t.timestamps
    end
  end
end
