class ThingsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "things"   # Excluding ".pdf" extension.
      end
    end
  end
end
