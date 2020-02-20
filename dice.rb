require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    # ruby code...
#  @die1 = rand(1..6)
#  @die2 = rand(1..6)
#  @die3 = rand(1..6)
#  @die4 = rand(1..6)
#  @die5 = rand(1..6)
#  @die6 = rand(1..6)

  @dice = []
  for die in (0..4)
    die = rand(1..6)
    @dice << die
  end 
  #  total = die1 + die2

  #"<h3>Dice: #{die1}, #{die2}, Total: #{total}</h3>"
    
    # to render HTML - view filename
    view "dice"
end

get "/tacos" do

    "<h1>Taco World</h1>"
end