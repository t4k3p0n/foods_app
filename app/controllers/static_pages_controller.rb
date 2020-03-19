class StaticPagesController < ApplicationController
  def home
    @microposts=Micropost.all
  end
end
