if CLIENT then
	spawnmenu.AddContentType("phunbase_weapon_kf", function(container, obj) // spawn icons for kf weapons
	
		if ( !obj.material ) then return end
		if ( !obj.nicename ) then return end
		if ( !obj.spawnname ) then return end

		local icon = vgui.Create( "ContentIcon", container )
		icon:SetContentType( "weapon" )
		icon:SetSpawnName( obj.spawnname )
		icon:SetName( "KF | "..obj.nicename )
		icon:SetMaterial( obj.material )
		icon:SetAdminOnly( obj.admin )
		icon:SetColor( Color( 135, 206, 250, 255 ) )
		
		icon.DoClick = function()
			RunConsoleCommand( "gm_giveswep", obj.spawnname )
			surface.PlaySound( "ui/buttonclickrelease.wav" )
		end

		icon.DoMiddleClick = function()
			RunConsoleCommand( "gm_spawnswep", obj.spawnname )
			surface.PlaySound( "ui/buttonclickrelease.wav" )
		end

		icon.OpenMenu = function( icon )
			local menu = DermaMenu()
				menu:AddOption( "Copy to Clipboard", function() SetClipboardText( obj.spawnname ) end )
				menu:AddOption( "Spawn Using Toolgun", function() RunConsoleCommand( "gmod_tool", "creator" ) RunConsoleCommand( "creator_type", "3" ) RunConsoleCommand( "creator_name", obj.spawnname ) end )
				menu:AddOption( "Rebuild Icon", function() icon:PB_UpdateSpawnIcon() end )
				menu:AddSpacer()
				menu:AddOption( "Delete", function() icon:Remove() hook.Run( "SpawnlistContentChanged", icon ) end )
			menu:Open()
		end
		
		local wepTable = weapons.GetStored(obj.spawnname)
		local params = wepTable.KF_IconParams
		
		if !params then
			if ( IsValid( container ) ) then
				container:Add( icon )
			end
			return icon
		end // if no icon params exist, keep default
		
		icon.Paint = function() return end
		icon.Label:SetTextColor(Color(200,40,40,255))
		
		local modelpanel = vgui.Create("DModelPanel", icon)
		icon.PB_MODELPANEL = modelpanel
		icon.PB_WEPOBJ = obj
		
		modelpanel:SetSize(icon:GetSize())
		modelpanel:SetModel(wepTable.ViewModel)
		modelpanel:SetFOV( 60 )
		modelpanel:SetCamPos( Vector( 0, -params.dist * 2, -params.offsetPos.z/2 ) )
		modelpanel:SetLookAng( Angle(0,90,0) )
		
		modelpanel:SetDirectionalLight( BOX_LEFT, Color( 255, 255, 255 ) )
		modelpanel:SetDirectionalLight( BOX_BOTTOM, Color( 255, 255, 255 ) )
		modelpanel:SetDirectionalLight( BOX_TOP, Color( 255, 255, 255 ) )
		
		modelpanel.PB_ShouldSpin = params.spin
		modelpanel.PB_Bodygroups = params.bodygroups
		
		function modelpanel:LayoutEntity()
			local mdl = self.Entity
			mdl:SetSequence("idle_center")
			self:RunAnimation()
			mdl:SetAngles( self.PB_ShouldSpin and Angle( 0, RealTime() * 100 % 360, 0 ) or Angle(0,180,0) )
			
			for i = 0, #mdl:GetBodyGroups() do
				mdl:SetBodygroup(i, 0)
			end
			if self.PB_Bodygroups then
				for k, v in pairs(self.PB_Bodygroups) do
					if isnumber(k) and isnumber(v) then
						mdl:SetBodygroup(k, v)
					end
				end
			end
		end
		
		modelpanel.DoClick = function(self) icon:DoClick() end
		modelpanel.DoMiddleClick = function(self) icon:DoMiddleClick() end
		modelpanel.DoRightClick = function(self) icon:OpenMenu() end
		
		function icon:PB_UpdateSpawnIcon()
			local mp = self.PB_MODELPANEL
			local obj = self.PB_WEPOBJ
			local wepTable = weapons.GetStored(obj.spawnname)
			local params = wepTable.KF_IconParams
			
			if !params then return end
			
			icon:SetName( "KF | "..wepTable.PrintName )
			
			mp:SetModel(wepTable.ViewModel)
			mp:SetCamPos( Vector( 0, -params.dist * 2, -params.offsetPos.z/2 ) )
			
			mp.PB_ShouldSpin = params.spin
			mp.PB_Bodygroups = params.bodygroups
		end

		if ( IsValid( container ) ) then
			container:Add( icon )
		end
		
		PHUNBASE.SpawnIcons[icon:GetSpawnName()] = icon

		return icon

	end)
	
	hook.Add("InitPostEntity", "pb_kf_spawnicons_precache", function()
		local path = "models/gmod4phun/kf"
		local files, dirs = file.Find( path.."/*.mdl", "GAME" )
		for k, v in pairs(files) do
			util.PrecacheModel(path.."/"..v)
		end
	end)

end
