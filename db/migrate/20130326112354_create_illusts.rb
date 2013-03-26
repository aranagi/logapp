class CreateIllusts < ActiveRecord::Migration
  def change
    create_table :illusts do |t|
      t.string :picture
      t.string :title
      t.string :genre

      t.timestamps
    end
  end
end
