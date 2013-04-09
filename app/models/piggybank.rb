class Piggybank < ActiveRecord::Base
  attr_accessible :name, :penny, :nickle, :dime, :quarter, :dollar

  def total_cents
    penny.to_i + nickle.to_i*5 + dime.to_i*10 + quarter.to_i*25 + dollar.to_i*100
  end
end
