class CreateIrregEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :irreg_episodes do |t|
      t.integer :value
      t.datetime :date_time
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
