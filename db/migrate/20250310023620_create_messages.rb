class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :username

      t.timestamps
    end
  end
end
