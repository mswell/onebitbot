class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :answer
      t.integer :company_id
    end
  end
end

