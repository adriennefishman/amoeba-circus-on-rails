class Amoeba < ActiveRecord::Base
  belongs_to :talent
  belongs_to :act

  validates_presence_of :act
  
NAMES = ["Julia", "Amanda", "David", "Hope", "Glenn", "Nikki", "Brad", "Harrison", "Justin", "Jack", "Dawn", "Bobby", "Emily", "Zack", "Jeremy"]
  def split
    2.times do 
      Amoeba.create(:name => get_name, :talent_id => self.talent_id, :generating_number => (self.generating_number + 1), :act_id => self.act_id)
    end
    self.destroy
  end

  def get_name
    new_name = self.name
    while new_name == self.name
      new_name = NAMES.sample
    end
    return new_name
  end
end
