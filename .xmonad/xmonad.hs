import XMonad
import XMonad.Hooks.DynamicLog(xmobar)
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.SetWMName
import System.IO
import XMonad.Hooks.ICCCMFocus

main = do
--xmproc <- spawnPipe "gnome-settings-daemon"
xmonad =<< xmobar defaultConfig
        { 
          manageHook = manageDocks <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , borderWidth        = 6
        , startupHook =  do
                setWMName "LG3D"
--                spawn "gnome-settings-daemon"
        , normalBorderColor  = "#000000"
        , focusedBorderColor = "#0087ff"
--        , normalBorderColor = "#ca97b6"
        , logHook = takeTopFocus
--        , modMask = mod4Mask
        }


