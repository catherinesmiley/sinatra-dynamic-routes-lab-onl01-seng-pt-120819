require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @name = params[:name]
    @reversed_name = @name.reverse
    "#{@reversed_name}"
  end 

  get "/square/:number" do 
    @number = params[:number].to_i
    @squared_number = (@number * @number)
    "#{@squared_number}"
  end 

  get "/say/:number/:phrase" do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    result = ""
    @number.times do 
      result += @phrase 
    end 
    result  
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i 
    @number2 = params[:number2].to_i
    if @operation == "add"
      (@number1 + @number2).to_s
    elsif @operation == "subtract" 
      (@number1 - @number2).to_s 
    elsif @operation == "multiply"
      (@number1 * @number2).to_s 
    else
      (@number1 / @number2).to_s
    end 
  end 

end