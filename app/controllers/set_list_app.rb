class SetList < Sinatra::Base

  get '/' do
    erb :welcome
  end

  get '/songs' do
    @songs = Song.all
    erb :"songs/index"
  end

  helpers do
    def number_to_currency(number)
      ('$%.2f' % number).to_s
    end
  end
end
