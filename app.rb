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
      #binding.pry
        rent = []
        @number = params[:number]
        @phrase = params[:phrase]
        @number.to_i.times{rent << @phrase }
        rent
    end
      get '/say/:word1/:word2/:word3/:word4/:word5' do
        #binding.pry
         "#{params.map{|k,v| v }.join(' ')}."
      end
      
        get '/:operation/:number1/:number2'
            @number1 = params[:number1]
            @number2 = params[:number2]
            binding.pry
            # (@number1.to_i + @number2.to_i).to_s
            # (@number1.to_i - @number2.to_i).to_s
            # (@number1.to_i * @number2.to_i).to_s
            # (@number1.to_i / @number2.to_i).to_s
           
        end
    
end