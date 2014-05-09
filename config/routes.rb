Rails.application.routes.draw do

  get("/calculations",        { :controller => "calculations", :action => "home" })
  get("/calculations/:sqrt",  { :controller => "calculations", :action => "sqrt" })
  get("/payment/:interest_rate/:number_of_payments/:present_value", { :controller => "calculations", :action => "pmt" })
end
