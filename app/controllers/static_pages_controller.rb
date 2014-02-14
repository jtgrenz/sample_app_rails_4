class StaticPagesController < ApplicationController
<<<<<<< HEAD
  def home
  	if signed_in?
  		@micropost = current_user.microposts.build
  		@feed_items = current_user.feed.paginate(page: params[:page])
  	end
  end

  def help
  end
  
  def about
  end

	def contact
	end
=======

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
  
  def help
  end

  def about
  end

  def contact
  end
>>>>>>> 7a4ab8fb42ad8330c565974e3561a9714f3594ba
end
