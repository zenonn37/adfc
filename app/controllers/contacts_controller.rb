class ContactsController < ApplicationController
  


  def index
  end


  def check

    @contacts = Contact.all;
  end



  def new

  	@contacts = Contact.new
  end



  def create
  	@contacts = Contact.new(contact_params)

  	if @contacts.save

  		redirect_to static_pages_url

  	else

  		render 'new'
  	end
  	
  end

  def show
  	@contacts = Contact.params[:id]
  end


  private

  def contact_params
  	params.require(:contact).permit(:name,:body,:email)
  	
  end



end
