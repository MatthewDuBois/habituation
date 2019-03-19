class Avatar < ApplicationRecord
  has_secure_password  validates :email, presence:true, uniqueness:true

  has_many :habits
  has_many :purchased_loots

  # attr_accessor :gold_total, :level, :xp_total
  def check_level
    p self.level
    p "*" * 50
    p self.xp_total
    p "*" * 50
    lvl = self.level
    p lvl
    p "*" * 50
    breakpoint = lvl * 100
    p breakpoint
    p "this is the breakpoint"
    xp = self.xp_total
    p xp
    p "*" * 50
    if breakpoint < self.xp_total
      self.level += 1
      p self.level
      p "^" * 50 
      self.xp_total = 0
      p "^" * 50 
      self.update(xp_total: 0)  
      p "@" * 50
      self.update!(level: self.level) 
      p self.level
    end
  end

  # def get_xp 
  #   # habit = current avatars current habit
  #   habits = self.habits
  #   habits.each do |habit|
  #     if habit.id == params[:habit_id]
  #       if habit.difficulty == 0
  #         self.xp_total += 17.5
  #       elsif habit.difficulty == 1
  #         self.xp_total += 32
  #       else habit.difficulty == 2
  #         self.xp_total += 48.33
  #       end   
  #     end
  #   end
  #   self.save
  # end

end
