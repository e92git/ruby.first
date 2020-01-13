class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, null: false, foreign_key: true
      # add_foreign_key :comments, :articles, column: :article_id, on_delete: :cascade

      t.timestamps
    end
  end
end
