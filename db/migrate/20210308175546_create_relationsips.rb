class CreateRelationsips < ActiveRecord::Migration[6.0]
  def change
    create_table :relationsips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :follow, null: false, foreign_key: { to_table: :users }

      t.timestamps
      t.index [:user_id, :follow_id], unique: true
    end
  end
end
