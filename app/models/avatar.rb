class Avatar < ApplicationRecord
  has_secure_password  validates :email, presence:true, uniqueness:true

  has_many :habits
  has_many :purchased_loots
  has_one :specialization

  enum path: {neophyte: 0, tech_guru: 1, warrior_poet: 2, alchemist_hunter: 3, wanderlust_hacker: 4, ascetic_seer: 5}

  def check_level
    lvl = self.level
    breakpoint = lvl * 100
    xp = self.xp_total
    points = self.points
    if breakpoint < xp
      self.level += 1
      self.points += 1
      new_xp = (xp - breakpoint) 
      self.update(xp_total: new_xp)  
      self.update(level: self.level) 
      self.update(points: self.points)
    end
    check_path
  end

  def check_path
    if self.level == 4 && self.path == "neophyte"
      choose_path
    end
  end

  def choose_path
    p "hello world" * 10
   render 'show.json.jbuilder'
    
  end




end
