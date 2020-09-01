class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string   :work_type
      t.string   :school
      t.integer  :gakunen
      t.integer  :ninzu
      t.integer  :teiinn
      t.datetime :start
      t.datetime :end
      t.text     :bikou
      t.timestamps
    end
  end
end
