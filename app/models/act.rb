class Act < ActiveRecord::Base
  has_many :amoebas
  has_many :talents, :through => :amoebas

  accepts_nested_attributes_for :amoebas

  # def amoebas_attributes=(amoeba_array)
  #   amoeba_array.each do |amoeba_hash|
  #     amoeba = Amoeba.find_or_create_by(:name => amoeba_hash[:name])
  #     self.create(:amoeba => amoeba)
  #     #self.song_genres.create(:genre => genre)
  #   end
  # end

end
