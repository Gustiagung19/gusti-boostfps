if Config.Frameworks == 'ESX' then
  ESX = exports['es_extended']:getSharedObject()
elseif Config.Frameworks == 'QBCore' then
  QBCore = exports['qb-core']:GetCoreObject()
end

if Config.Frameworks = 'ESX' then
  RegisterCommand(Config.Commands, function(source)
    TriggerEvent('gusti-boostfps:showMenu')
  end)
elseif Config.Frameworks == 'QBCore' then
  QBCore.Commands.Add(Config.Commands, function(source)
    TriggerEvent('gusti-boostfps:showMenu')
  end)
end

RegisterNetEvent('gusti-boostfps:showMenu')
AddEventHandler('gusti-boostfps:showMenu', function()
  lib.registerContext({
      id = 'boost_fps_menu',
      title = 'Boost FPS',
      options = {
        {
          title = 'FPS Boost #1',
          icon = 'fas fa-code-merge',
          onSelect = function()
              SetTimecycleModifier('yell_tunnel_nodirect')
          end,
        },
        {
          title = 'Lights Mode',
          icon = 'fas fa-code-merge',
          onSelect = function()
              SetTimecycleModifier('tunnel')
          end,
        },
        {
          title = 'Graphics',
          icon = 'fas fa-code-merge',
          onSelect = function()
              SetTimecycleModifier('MP_Powerplay_blend')
              SetExtraTimecycleModifier('reflection_correct_ambient')
          end,
        },
        {
          title = 'Simple/Reset',
          icon = 'fas fa-code-merge',
          onSelect = function()
              SetTimecycleModifier()
              ClearTimecycleModifier()
              ClearExtraTimecycleModifier()
          end,
        }
      }
  })
  lib.showContext('boost_fps_menu')
end)