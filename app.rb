require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get "/reversename/:name" do
        @name = params[:name]
        @name.reverse
    end
    get "/square/:number" do 
          
        @number = params[:number]
        #binding.pry
       ( @number.to_i * @number.to_i).to_s
        
       
    end
    
    get '/say/:number/:phrase'  do
      binding.pry
        @number = params[:number]
        @phrase = params[:phrase]
        
        
    end
      # get '/say/:word1/:word2/:word3/:word4/:word5' do 
      #     @word1 = params[:word1]
      #     @word2 = params[:word2]
      #     @word3 = params[:word3]
      #     @word4 = params[:word4]
      #     @word5 = params[:word5]
      # end
      #   get '/:operation/:number1/:number2'
      #       @number1 = params[:number1]
      #       @number2 = params[:number2]
      #       (@number1.to_i + @number2.to_i).to_s
      #       (@number1.to_i - @number2.to_i).to_s
      #       (@number1.to_i * @number2.to_i).to_s
      #       (@number1.to_i / @number2.to_i).to_s
           
      #   end
    
end