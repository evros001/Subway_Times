class CreateExtractapis < ActiveRecord::Migration
  def change
    create_table :extractapis do |t|

      t.timestamps null: false
    end
  end
end
