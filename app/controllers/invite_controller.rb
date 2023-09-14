class InviteController < ApplicationController
  def create
  
  end
  
  def index
    @invite = Invite.all
  end
end
