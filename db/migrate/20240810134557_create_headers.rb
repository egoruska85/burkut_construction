class CreateHeaders < ActiveRecord::Migration[7.0]
  def change
    create_table :headers do |t|
      t.string :name
      t.string :type_ru
      t.string :type_tm
      t.string :type_en

      t.timestamps
    end
  end
end
