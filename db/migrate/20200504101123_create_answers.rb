class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.uuid :uuid
      t.string :label
      t.integer :value, defaut: 0
      t.uuid :poll_uuid

      t.timestamps
    end
  end
end
