# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @q = Micropost.ransack(params[:q])
    @microposts = @q.result(distinct: true).page(params[:page]).per(9)
    # @microposts =Kaminari.paginate_array(Micropost.all).page(params[:page]).per(9)
  end
end
