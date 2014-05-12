Rails.application.routes.draw do

  get("/calculations",        { :controller => "calculations", :action => "home" })
  get("/square_root/:number",  { :controller => "calculations", :action => "sqrt" })
  get("/square/:number",  { :controller => "calculations", :action => "square" })
  get("/payment/:interest_rate/:number_of_payments/:present_value", { :controller => "calculations", :action => "pmt" })
end
