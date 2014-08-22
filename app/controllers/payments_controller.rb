class PaymentsController < ApplicationController
  def index
    @zipcodes = Zipcode.selected
  end
end
