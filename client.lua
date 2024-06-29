ESX = exports["es_extended"]:getSharedObject()

lib.registerContext({
    id = 'cs_fps_menu',
    title = 'Boost FPS',
    options = {
      {
        title = 'FPS',
        description = 'Poprawia Optymalizację',
        icon = 'person-running',
        onSelect = function()
            SetTimecycleModifier('yell_tunnel_nodirect')
          end,
      },
      {
        title = 'GRAFIKA',
        description = 'Poprawia Grafikę',
        icon = 'tree-city',
        onSelect = function()
            SetTimecycleModifier('MP_Powerplay_blend')
            SetExtraTimecycleModifier('reflection_correct_ambient') 
          end,
      },
      {
        title = 'Domyślne',
        description = 'Przywraca ustwienia domyślne',
        icon = 'house',
        onSelect = function()
            SetTimecycleModifier()
            ClearTimecycleModifier()
            ClearExtraTimecycleModifier()
          end,
      },
    }
  })

  RegisterCommand('fps2', function()
    lib.showContext('cs_fps_menu')
  end)