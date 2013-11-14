class Rate < ActiveRecord::Base

	scope :amount,->{order(price: :asc)}
end
