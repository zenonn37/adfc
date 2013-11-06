class ContactsController < ApplicationController
  def index
  end



  def new

  	@contacts = Contact.new
  end



  def create
  	@contacts = Contact.new(contact_params)

  	if @contacts.save

  		redirect_to static_pages url

  	else

  		render 'new'
  	end
  	
  end

  def show
  	@contacts = Contact.params[:id]
  end


  private

  def contact_params
  	params.require(:contact).permit(:name,:body,:email,:phone,:hours)
  	
  end



end
