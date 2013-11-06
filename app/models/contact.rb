class Contact < ActiveRecord::Base
	after_save :send_email



	def send_email

		ContactMailer.contact(self).deliver
		
	end


end
