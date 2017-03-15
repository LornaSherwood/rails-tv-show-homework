class Show < ActiveRecord::Base

  def staying_power
    staying_power = "untested"
    staying_power = "well-loved" if series > 3
    return staying_power
  end
end
