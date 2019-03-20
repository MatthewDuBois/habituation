class Avatar < ApplicationRecord
  has_secure_password  validates :email, presence:true, uniqueness:true

  has_many :habits
  has_many :purchased_loots
  has_one :specialization

  def check_level
    lvl = self.level
    breakpoint = lvl * 100
    xp = self.xp_total
    if breakpoint < self.xp_total
      self.level += 1
      self.xp_total = 0
      self.update(xp_total: 0)  
      self.update!(level: self.level) 
      render ''
    end
    check_class
  end

  def check_class
    if self.level == 3 && self.avatar_class != "neophyte"
      choose_class
    end
  end

  def choose_class
    if self.
    end  
    
  end




end
