class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
