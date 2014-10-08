data :morp_info do
	{
		:miid				=>	{
			:primary_key	=>	true,
		},
		:name				=> 	{},
		:description		=> 	{},
		:author				=> 	{},
		:email				=> 	{},
		:website			=> 	{},
		:dependon			=> 	{},
		:order				=> 	{
			:default		=>	9,
			:form_type		=>	:hide
		},
		:created			=>	{
			:default		=>	Time.now
		},
	}
end

valid :morp_info do | f |

 	user_mark :morp_info, 30, L['you have not be submited in 30 seconds']

	if f[:name] and f[:name].strip == ''
		_throw L[:'the name is not null']
	end

end
