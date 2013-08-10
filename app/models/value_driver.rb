class ValueDriver < ActiveRecord::Base
  
    
   validates :name, presence: true, length: {maximum: 15},
                  uniqueness: { case_sensitive: false }

end
