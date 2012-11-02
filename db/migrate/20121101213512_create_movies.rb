class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :tytul
      t.string :rezyser
      t.string :gatunek
      t.integer :dlugosc
      t.decimal :ocena_filmweb
      t.decimal :ocena_imdb
      t.decimal :moja_ocena

      t.timestamps
    end
  end
end
