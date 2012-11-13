class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :tytul
      t.string :rezyser
      t.string :gatunek
      t.integer :dlugosc
      t.float :ocena_filmweb
      t.float :ocena_imdb
      t.integer :moja_ocena

      t.timestamps
    end
  end
end
