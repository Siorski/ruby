class Movie < ActiveRecord::Base
  attr_accessible :dlugosc, :gatunek, :moja_ocena, :ocena_filmweb, :ocena_imdb, :rezyser, :tytul
  
  validates :tytul, presence: true
  validates :dlugosc, :numericality => { :greater_than_or_equal_to => 0 }  
  validates :ocena_filmweb, :numericality => { only_float: true, :greater_than_or_equal_to => 0  }
  validates :ocena_imdb, :numericality => { only_float: true, :greater_than_or_equal_to => 0  }

def self.search(tytul)
if tytul.present?
  find(:all, :conditions => ['Tytul like ?', "%#{tytul}%"])
  else
    scoped
  end
end

end
