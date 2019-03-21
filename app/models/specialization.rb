class Specialization < ApplicationRecord
  belongs_to :avatar

  enum code: {tech_guru: 0, warrior_poet: 1, alchemist_hunter: 2, wanderlust_hacker: 3, ascetic_seer: 4}



end
