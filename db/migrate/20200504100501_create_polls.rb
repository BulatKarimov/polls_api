class CreatePolls < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.uuid :uuid
      t.string :poll_type, default: 'active'
      t.text :text
      t.string :start_date
      t.string :end_date
      t.string :address_uuids, array: true, default: []
      t.string :answer_uuid

      t.timestamps
    end
  end
end
