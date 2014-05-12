class CalculationsController < ApplicationController
  def home

  end

  def square
    @your_number = params[:number].to_f
    @square_of_the_number = (@your_number)**2
  end

  def sqrt
    @the_number = params[:number].to_f
    @answer = Math.sqrt(@the_number)
  end

  def pmt
    @interest_rate = params[:interest_rate].to_f
    @number_of_payments = params[:number_of_payments].to_f
    @present_value = params[:present_value].to_f
    rate12 = @interest_rate/100/12
    numerator = @present_value*rate12.to_f
    denomenator = 1-(1+rate12.to_f)**-@number_of_payments

    @payment = (numerator/denomenator).to_i #"#{(@interest_rate,@number_of_payments,@present_value)}"

  end
end
