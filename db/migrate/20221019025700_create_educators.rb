class CreateEducators < ActiveRecord::Migration[7.0]
  def change
    create_table :educators do |t|
      t.string :university
      t.string :coursename

      t.timestamps
    end
  end
end
