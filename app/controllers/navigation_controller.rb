class NavigationController < ApplicationController
  def login
    if !params[:login_name].empty? && !params[:login_password].empty?
      logged_user = Account.where(name: params[:login_name]).where(password: params[:login_password]).first
      if !logged_user.nil?
        cookies[:login_id] = logged_user.id
        flash[:notice] = 'login succssful'
      else
        flash[:notice] = 'invalid credentials'
      end
    else
      flash[:notice] = 'enter all information'
    end
    redirect_to :back
  end

  def logout
    cookies[:login_id] = 'empty'
    flash[:notice] = 'logged out'
    redirect_to :back
  end
end
