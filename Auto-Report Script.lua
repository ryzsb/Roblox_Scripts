repeat
	task.wait()
until game:IsLoaded()

local lib = {
	['notification'] = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"), true))(),
	['cooldown'] = false,
	['username'] = 'unknown',
	['bw'] = 'unknown'
}

local words = {
    -- Bullying
    ['gay'] = 'Bullying',
    ['trans'] = 'Bullying',
    ['lgbt'] = 'Bullying',
    ['lesbian'] = 'Bullying',
    ['suicide'] = 'Bullying',
    ['f@g0t'] = 'Bullying',
    ['furry'] = 'Bullying',
    ['furries'] = 'Bullying',
    ['nigger'] = 'Bullying',
    ['nigga'] = 'Bullying',
    ['bible'] = 'Bullying',
    ['cheat'] = 'Cheating',
    ['report'] = 'Bullying',
    ['niga'] = 'Bullying',
    ['bitch'] = 'Bullying',
    ['cringe'] = 'Bullying',
    ['trash'] = 'Bullying',
    ['allah'] = 'Bullying',
    ['dumb'] = 'Bullying',
    ['idiot'] = 'Bullying',
    ['kid'] = 'Bullying',
    ['clown'] = 'Bullying',
    ['bozo'] = 'Bullying',
    ['faggot'] = 'Bullying',
    ['autist'] = 'Bullying',
    ['autism'] = 'Bullying',
    ['get a life'] = 'Bullying',
    ['nolife'] = 'Bullying',
    ['no life'] = 'Bullying',
    ['adopted'] = 'Bullying',
    ['skill issue'] = 'Bullying',
    ['muslim'] = 'Bullying',
    ['gender'] = 'Bullying',
    ['parent'] = 'Bullying',
    ['islam'] = 'Bullying',
    ['christian'] = 'Bullying',
    ['noob'] = 'Bullying',
    ['retarded'] = 'Bullying', 
    ['retard'] = 'Bullying',
    ['too bad'] = 'Bullying',
    ['womp womp'] = 'Bullying',
    ['burn'] = 'Bullying',
    ['stupid'] = 'Bullying',
    ['idc'] = 'Bullying',
    ['pride'] = 'Bullying',
    ['mother'] = 'Bullying',
    ['father'] = 'Bullying',
    ['kid'] = 'Bullying',
    ['kid'] = 'Bullying',
    ['jump'] = 'Bullying',
    ['no father figure'] = 'Bullying',
    ['homo'] = 'Bullying',
    ['hate'] = 'Bullying',
    ['get lost'] = 'Bullying',
    ['useless'] = 'Bullying',
    ['screw you'] = 'Bullying',
    ['loser'] = 'Bullying',
    ['shut up'] = 'Bullying',
    ['weirdo'] = 'Bullying',

    -- Swearing
    ['cum'] = 'Swearing',
    ['cock'] = 'Swearing',
    ['penis'] = 'Swearing',
    ['dick'] = 'Swearing',
    ['sex'] = 'Swearing',
    ['wthf'] = 'Swearing',
    ['asshole'] = 'Swearing',
    ['shit'] = 'Swearing',
    ['bastard'] = 'Swearing',
    ['terroris'] = 'Swearing',
    ['hell'] = 'Swearing',
    ['fuck'] = 'Swearing',
    ['fucker'] = 'Swearing',
    ['damn'] = 'Swearing',
    ['pussy'] = 'Swearing',
    ['bomb'] = 'Swearing',
    ['end it'] = 'Swearing',
    ['twat'] = 'Swearing',
    ['cockhead'] = 'Swearing',
    ['bitch'] = 'Swearing',
    ['fag'] = 'Swearing',
    ['douche'] = 'Swearing',
    ['slut'] = 'Swearing',

    ['youtube'] = 'Offsite Links',
    ['vimeo'] = 'Offsite Links',
    ['twitch'] = 'Offsite Links',
    ['instagram'] = 'Offsite Links',
    ['facebook'] = 'Offsite Links',
    ['twitter'] = 'Offsite Links',
    ['discorn'] = 'Offsite Links',
    ['blue app'] = 'Offsite Links',
    ['snapchat'] = 'Offsite Links',
    ['whatsapp'] = 'Offsite Links',
    ['tik tok'] = 'Offsite Links',
    ['reddit'] = 'Offsite Links',
    ['link'] = 'Offsite Links',
    ['external link'] = 'Offsite Links',
    ['spam link'] = 'Offsite Links',
    ['address'] = 'Personal Information',
    ['phone'] = 'Personal Information',
    ['email'] = 'Personal Information',
    ['password'] = 'Personal Information',
    ['social security'] = 'Personal Information',
    ['credit card'] = 'Personal Information',
    ['bank account'] = 'Personal Information',
    ['zip code'] = 'Personal Information',
    ['postcode'] = 'Personal Information',
    ['full name'] = 'Personal Information',
    ['dob'] = 'Personal Information',
    ['birthdate'] = 'Personal Information',
    ['age'] = 'Personal Information',
    ['sex'] = 'Dating/Sex',
    ['harder'] = 'Dating/Sex',
    ['nude'] = 'Dating/Sex',
    ['porn'] = 'Dating/Sex',
    ['dirty talk'] = 'Dating/Sex',
    ['naked'] = 'Dating/Sex',
    ['dildo'] = 'Dating/Sex',
    ['vibrator'] = 'Dating/Sex',
    ['masturbate'] = 'Dating/Sex',
    ['orgy'] = 'Dating/Sex',
    ['sex tape'] = 'Dating/Sex',
    ['augh'] = 'Dating/Sex',
    ['daddy'] = 'Dating/Sex',
    ['blowjob'] = 'Dating/Sex',
    ['fuck me'] = 'Dating/Sex',
    ['hot sex'] = 'Dating/Sex',
    ['sex chat'] = 'Dating/Sex',
    ['racy'] = 'Dating/Sex',
    ['seduce'] = 'Dating/Sex',
    ['fuck you'] = 'Dating/Sex',
    ['kiss me'] = 'Dating/Sex',
    ['exploit'] = 'Cheating',
    ['hack'] = 'Cheating',
    ['cheat'] = 'Cheating',
    ['script'] = 'Cheating',
    ['exploit script'] = 'Cheating',
    ['duplicate'] = 'Cheating',
    ['cloner'] = 'Cheating',
    ['speed hack'] = 'Cheating',
    ['aimbot'] = 'Cheating',
    ['wallhack'] = 'Cheating',
    ['bypass'] = 'Cheating',
    ['glitch'] = 'Cheating',
    ['money hack'] = 'Cheating',
    ['auto clicker'] = 'Cheating',
    ['fake account'] = 'Cheating',

    }


local players = game:GetService('Players')
local user = game:GetService('Players').LocalPlayer

function lib.notify()
	lib.notification:message{
		Title = "AutoReport",
		Description = "Reported " .. lib.username .. ' for saying "' .. lib.bw .. '"',
		Icon = 6023426926
	}
end

function lib.report(user, name, rs)
	if user and lib.cooldown == false then
		lib.username = name
		local suc, er = pcall(function()
			players:ReportAbuse(players:FindFirstChild(name), rs, 'breaking TOS')
		end)
		if not suc then
			return warn("Couldn't report due to the reason: " .. er .. ' | AR')
		else
			lib.notify()
		end
		lib.cooldown = true
		task.wait(5)
		lib.username = 'unknown'
		lib.bw = 'unknown'
		lib.cooldown = false
	end
end

players.PlayerChatted:Connect(function(chatType, plr, msg)
	msg = string.lower(msg)
	if chatType ~= Enum.PlayerChatType.Whisper and plr ~= user then
		for i, v in next, words do
			if string.find(msg, i) then
				lib.bw = i
				lib.report(plr.UserId, plr.Name,v)
			end
		end
	end
end)

lib.notification:message{
	Title = "AutoReport",
	Description = "loaded",
	Icon = 6023426926
}