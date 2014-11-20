# front page
get '/www/modules' do
	@mods = Sdb[:morp_info].reverse_order(:miid).all
	www_page :morp_info
end

# add a new post
get '/www/module/new' do
	# navigation
# 	@nav 				= [
# 		Sl['Edit'],
# 		'-',
# 		Sl['new a module']
# 	]
# 
	view_form(:morp_info, {
			:layout 	=> _var(:layout, :www).to_sym,
			:tpl 		=> :view_form2,
			:action 	=> '/www/module/new'
		}
	)
end

post '/www/module/new' do
	data_submit :morp_info
 	redirect _url('/www/modules')
end


