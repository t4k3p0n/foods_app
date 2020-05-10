# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @microposts = Kaminari.paginate_array(Micropost.all).page(params[:page]).per(9)
  end
end
