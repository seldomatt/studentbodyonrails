class CreateIndexstudents < ActiveRecord::Migration
  def change
    create_table :indexstudents do |t|

      t.timestamps
    end
  end
end
