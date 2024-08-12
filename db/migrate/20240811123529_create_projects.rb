class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name_ru
      t.string :name
      t.string :_tm
      t.string :name_en
      t.string :body_ru
      t.string :body_tm
      t.string :body_en

      t.timestamps
    end
  end
end
