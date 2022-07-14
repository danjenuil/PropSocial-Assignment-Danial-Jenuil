class StaticPagesController < ApplicationController
  def home
    @q = Property.ransack(params[:q])
    @properties = @q.result.page(params[:page])
  end
end
