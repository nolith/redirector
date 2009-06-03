#
# redirector
#
#
# (c) 2009 - Alessio Caiazza <nolith AT abisso DOT org>

require 'rubygems'
require 'sinatra'

REDIRECT_TO='http://abisso.org'

get '/' do
	redirect REDIRECT_TO
end

get '/*' do
	redirect "#{REDIRECT_TO}/#{params[:splat][0]}"
end
