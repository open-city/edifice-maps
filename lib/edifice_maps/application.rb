require "sinatra/base"
require "sinatra/reloader"
require "sinatra-initializers"
require "sinatra/r18n"

module EdificeMaps
  class Application < Sinatra::Base
    enable :logging, :sessions
    enable :dump_errors, :show_exceptions if development?

    configure :development do
      register Sinatra::Reloader
    end
    
    register Sinatra::Initializers
    register Sinatra::R18n

    before do
      session[:locale] = params[:locale] if params[:locale]
    end

    use Rack::Logger
    use Rack::Session::Cookie

    helpers EdificeMaps::HtmlHelpers
    
    get "/" do
      File.read(File.join('public', 'index.html'))
    end
    
    # This magic route saves you the trouble of writing routes for everything
    get "/:page" do
      @current_menu = params[:page]
      haml params[:page].to_sym
    end
  end
end
