class Movie < ActiveRecord::Base
  attr_accessible :dlugosc, :gatunek, :moja_ocena, :ocena_filmweb, :ocena_imdb, :rezyser, :tytul
  
  
  validates :tytul, presence: true

  validates :ocena_filmweb, numericality: { only_float: true }
  validates :ocena_imdb, numericality: { only_float: true }

end
