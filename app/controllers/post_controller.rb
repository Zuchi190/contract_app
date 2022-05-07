class PostController < ApplicationController
  def index
  respond_to do |format|
    format.html
    format.pdf do
      render pdf: 'post',
             layout: 'pdf',
             encording: 'UTF-8',
             template: 'post/index',
             orientation: 'Landscape'
    end
  end
end
end