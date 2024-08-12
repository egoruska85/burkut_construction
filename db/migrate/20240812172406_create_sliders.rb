class CreateSliders < ActiveRecord::Migration[7.0]
  def change
    create_table :sliders do |t|
      t.string :title_ru
      t.string :title_tm
      t.string :title_en
      t.string :body_ru
      t.string :body_tm
      t.string :body_en

      t.timestamps
    end
  end
end
