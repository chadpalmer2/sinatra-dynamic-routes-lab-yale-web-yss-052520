require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    params[:phrase]*params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    x, y = params[:number1].to_i, params[:number2].to_i
    case params[:operation]
    when 'add'
      (x + y).to_s
    when 'subtract'
      (x - y).to_s
    when 'multiply'
      (x * y).to_s
    when 'divide'
      y != 0 ? (x / y).to_s : "Divide by zero error!"
    else
      "Bad operation"
    end
  end

end