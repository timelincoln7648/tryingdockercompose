local http_api = minetest.request_http_api and minetest.request_http_api()
local api_timeout = 10
local personalToken = "2:Qdd6Xj7MQ5kvcUehHM_dC60lcVRV_8iidRunKbjlDeU4362ClCmI" -- Generate your token at https://app.optimizely.com/v2/profile/api
local flagId = "18504282684" -- Id of flag that controls time
local datafile = "WHvYbyVL3LAZJRJX6y47P" -- If you want to use the optional "optimizely" command to check your minetest http permissions

local function pcall_function(data)
	local contents = data

	if contents.projectId then
		local text = "Optimizely: Project "..contents.projectId.." loaded."
		minetest.chat_send_all(text)
		local text = "Feature "..contents.featureFlags[1].key.." found."
		minetest.chat_send_all(text)
	end

	if contents.environments.production.rollout_rules then
		local rules = contents.environments.production.rollout_rules[1]		
		if rules.enabled == true and rules.percentage_included >0 and time_travel == true then
			percentage = rules.percentage_included / 100
			local flagTime = percentage / 100
			minetest.set_timeofday(flagTime)
			minetest.chat_send_all("Optimizely: Set time to "..flagTime)
			time_travel = false
		elseif rules.enabled == true and rules.percentage_included >0 then
			percentage = rules.percentage_included / 100
			minetest.chat_send_all("Optimizely: This feature is enabled for "..rules.audience_conditions.." at "..percentage.."%")
		else
			minetest.chat_send_all("Optimizely: This feature is not enabled in production")
		end
	end
end

local function fetch_callback(result)
	if not result.completed then
		return
	end
	pcall(pcall_function, minetest.parse_json(result.data))
end

local function get_datafile(datafile)
	http_api.fetch({url = "https://cdn.optimizely.com/datafiles/"..datafile..".json", timeout = api_timeout}, fetch_callback)
end

local function get_flags(flagId)
	http_api.fetch({url = "https://api.optimizely.com/v2/features/"..flagId, timeout = api_timeout, extra_headers = { "Authorization: Bearer "..personalToken}}, fetch_callback)
end


minetest.register_chatcommand("optimizely", {
	description = "Talk to Optimizely",
	func = function()
		get_datafile(datafile)
		return true
	end
})

minetest.register_chatcommand("is_feature_enabled", {
	description = "Is this feature enabled?",
	func = function()
		get_flags(flagId)
		return true
	end
})

minetest.register_chatcommand("time_traveler", {
	description = "Wait... What time is it?",
	func = function()
		time_travel = true
		get_flags(flagId)
		return true
	end
})