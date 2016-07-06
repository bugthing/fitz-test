# frozen_string_literal: true

# intial model table definition
class CreateFavoritesTable < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :number
      t.string :user_id

      t.timestamps null: false
    end
  end
end
