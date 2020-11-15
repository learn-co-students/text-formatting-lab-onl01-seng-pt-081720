require_relative "models/text_analyzer.rb"

class App < Sinatra::Base
    get '/' do
        "Hello World"
    end

    post '/new' do
        @analyzed_text = TextAnalyzer.new(params[:user_text])
        binding.pry
        erb :results 
    end
    
end