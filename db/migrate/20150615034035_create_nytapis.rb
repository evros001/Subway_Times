class CreateNytapis < ActiveRecord::Migration
  def change
    create_table :nytapis do |t|

      t.timestamps null: false
    end
  end
end
