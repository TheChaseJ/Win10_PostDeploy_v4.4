#--- Uninstall unecessary applications that come with Windows out of the box ---

# 3D Builder
Get-AppxPackage -allusers *3DBuilder* | Remove-AppxPackage

# Alarms
Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage

# Autodesk
Get-AppxPackage -allusers *Autodesk* | Remove-AppxPackage

# Bing Weather, News, Sports, and Finance (Money):
Get-AppxPackage -allusers *BingFinance* | Remove-AppxPackage
Get-AppxPackage -allusers *BingNews* | Remove-AppxPackage
Get-AppxPackage -allusers *BingSports* | Remove-AppxPackage
Get-AppxPackage -allusers *BingWeather* | Remove-AppxPackage

# BubbleWitch
Get-AppxPackage -allusers *BubbleWitch* | Remove-AppxPackage

# Calculator
Get-AppxPackage -allusers *WindowsCalculator* | Remove-AppxPackage

# Candy Crush
Get-AppxPackage -allusers *king.com.CandyCrush* | Remove-AppxPackage
Get-AppxPackage -allusers *king.com.CandyCrushSaga* | Remove-AppxPackage
Get-AppxPackage -allusers *king.com.CandyCrushSodaSaga* | Remove-AppxPackage
Get-AppxPackage -allusers *king.com.BubbleWitch3Saga* | Remove-AppxPackage

# Comms Phone
Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage

# Dell
Get-AppxPackage -allusers *Dell* | Remove-AppxPackage

# DolbyAccess
Get-AppxPackage -allusers *DolbyLaboratories.DolbyAccess* | Remove-AppxPackage

# DrawboardPDF
Get-AppxPackage -allusers *Drawboard.DrawboardPDF* | Remove-AppxPackage

# Dropbox
Get-AppxPackage -allusers *Dropbox* | Remove-AppxPackage

# Facebook
Get-AppxPackage -allusers *Facebook* | Remove-AppxPackage

# Feedback Hub
Get-AppxPackage -allusers *WindowsFeedbackHub* | Remove-AppxPackage

# Flipboard
Get-AppxPackage -allusers *Flipboard.Flipboard* | Remove-AppxPackage

# Get Started
Get-AppxPackage -allusers *Getstarted* | Remove-AppxPackage

# Keeper
Get-AppxPackage -allusers *Keeper* | Remove-AppxPackage

# Mail & Calendar
Get-AppxPackage -allusers *windowscommunicationsapps* | Remove-AppxPackage

# Maps
Get-AppxPackage -allusers *WindowsMaps* | Remove-AppxPackage

# March of Empires
Get-AppxPackage -allusers *MarchofEmpires* | Remove-AppxPackage

# McAfee Security
Get-AppxPackage -allusers *McAfee* | Remove-AppxPackage

# Messaging
Get-AppxPackage -allusers *Messaging* | Remove-AppxPackage

# Minecraft
Get-AppxPackage -allusers *Minecraft* | Remove-AppxPackage

# Netflix
Get-AppxPackage -allusers *Netflix* | Remove-AppxPackage

# Office Lens
Get-AppxPackage -allusers *OfficeLens* | Remove-AppxPackage

# Office Hub
Get-AppxPackage -allusers *MicrosoftOfficeHub* | Remove-AppxPackage

# One Connect
Get-AppxPackage -allusers *OneConnect* | Remove-AppxPackage

# OneNote
Get-AppxPackage -allusers *Office.OneNote* | Remove-AppxPackage

# People
Get-AppxPackage -allusers *People* | Remove-AppxPackage

# Phone
Get-AppxPackage -allusers *WindowsPhone* | Remove-AppxPackage

# Plex
Get-AppxPackage -allusers *Plex* | Remove-AppxPackage

# RoyalRevolt2
Get-AppxPackage -allusers *RoyalRevolt2* | Remove-AppxPackage

# Skype (Metro version)
Get-AppxPackage -allusers *SkypeApp* | Remove-AppxPackage

# Sound Recorder
Get-AppxPackage -allusers *WindowsSoundRecorder* | Remove-AppxPackage

# Solitaire
Get-AppxPackage -allusers *Solitaire* | Remove-AppxPackage

# SpeedTest
Get-AppxPackage -allusers *NetworkSpeedTest* | Remove-AppxPackage

# Sticky Notes
Get-AppxPackage -allusers *MicrosoftStickyNotes* | Remove-AppxPackage

# Sway
Get-AppxPackage -allusers *Sway* | Remove-AppxPackage

# Todos
Get-AppxPackage -allusers *Todos* | Remove-AppxPackage

# Twitter
Get-AppxPackage -allusers *Twitter* | Remove-AppxPackage

# Wallet
Get-AppxPackage -allusers *Wallet* | Remove-AppxPackage

# Whiteboard
Get-AppxPackage -allusers *Whiteboard* | Remove-AppxPackage

# Xbox
Get-AppxPackage -allusers *XboxApp* | Remove-AppxPackage
Get-AppxPackage -allusers *XboxGameOverlay* | Remove-AppxPackage
Get-AppxPackage -allusers *XboxSpeechToTesxtOverlay* | Remove-AppxPackage
Get-AppxPackage -allusers *XboxIdentityProvider* | Remove-AppxPackage

# Zune Music, Movies & TV
Get-AppxPackage -allusers *ZuneMusic* | Remove-AppxPackage
Get-AppxPackage -allusers *ZuneVideo* | Remove-AppxPackage

# Miscellaneous
Get-AppxPackage -allusers *Viber* | Remove-AppxPackage
Get-AppxPackage -allusers *ACGMediaPlayer* | Remove-AppxPackage
Get-AppxPackage -allusers *EclipseManager* | Remove-AppxPackage
Get-AppxPackage -allusers *OneCalendar* | Remove-AppxPackage
Get-AppxPackage -allusers *LinkedInforWindows* | Remove-AppxPackage
Get-AppxPackage -allusers *HiddenCityMysteryofShadows* | Remove-AppxPackage
Get-AppxPackage -allusers *AutodeskSketchBook* | Remove-AppxPackage
Get-AppxPackage -allusers *DisneyMagicKingdoms* | Remove-AppxPackage
Get-AppxPackage -allusers *ActiproSoftwareLLC* | Remove-AppxPackage
Get-AppxPackage -allusers *AdobePhotoshopExpress* | Remove-AppxPackage
Get-AppxPackage -allusers *FarmVille2CountryEscape* | Remove-AppxPackage
Get-AppxPackage -allusers *Duolingo-LearnLanguagesforFree* | Remove-AppxPackage
Get-AppxPackage -allusers *CyberLinkMediaSuiteEssentials* | Remove-AppxPackage
Get-AppxPackage -allusers *Asphalt8Airborne* | Remove-AppxPackage
Get-AppxPackage -allusers *KeeperSecurityInc.Keeper* | Remove-AppxPackage
Get-AppxPackage -allusers *PandoraMediaInc* | Remove-AppxPackage
Get-AppxPackage -allusers *SpotifyAB.SpotifyMusic* | Remove-AppxPackage
Get-AppxPackage -allusers *WinZip* | Remove-AppxPackage
Get-AppxPackage -allusers *XING* | Remove-AppxPackage