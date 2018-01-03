class CreateBookTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :book_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
