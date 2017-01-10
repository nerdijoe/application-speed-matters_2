class UserPoint < ActiveRecord::Base
  self.primary_key = 'user_id'

  def full_name
    "#{first_name} #{last_name}"
  end

end
