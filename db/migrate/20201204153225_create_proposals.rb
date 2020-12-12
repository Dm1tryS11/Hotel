class CreateProposals < ActiveRecord::Migration[6.0]
  def change
    create_table :proposals do |t|
      t.string :name
      t.string :passport
      t.string :email
      t.date :arrival
      t.date :departure
      t.boolean :accept

      t.timestamps
    end
  end
end
