class Contact < ActiveRecord::Base


	validates :name, presence: true
	validates :email, presence: true
	validates :body, presence: true

	#after_save :send_email



	#def send_email

		#ContactMailer.contact(self).deliver
		
	#end


end
