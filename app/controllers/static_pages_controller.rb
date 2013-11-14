class StaticPagesController < ApplicationController
  def index
  end


 def about
 	
 end

 def services

 	
 end

 def privacy
 	
 end

 def rates
 	@rates = Rate.amount

 	
 end
end
