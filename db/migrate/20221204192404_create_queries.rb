# frozen_string_literal: true

class CreateQueries < ActiveRecord::Migration[7.0]
  def change
    enable_extension :pg_trgm
    create_table :queries do |t|
      t.string :user_id
      t.string :query
      t.index :query, opclass: :gin_trgm_ops, using: :gin
      t.timestamps
    end
  end
end
