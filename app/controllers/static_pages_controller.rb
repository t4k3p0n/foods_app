# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @microposts = Micropost.all
  end
end
