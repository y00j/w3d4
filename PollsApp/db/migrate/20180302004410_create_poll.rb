class CreatePoll < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :title
      t.integer :user_id
    end

    add_index(:polls, [:title, :user_id])
  end
end
