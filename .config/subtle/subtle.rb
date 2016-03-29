## Общие настройки

    set :step,              10
    set :border_snap,       10

    set :gravity,           :c_a2
    set :tiling,            false
    set :honor_size_hints,  false
    set :urgent,            false
    set :urgent_dialogs,    false

    set :click_to_focus,    false
    set :skip_pointer_warp, false
    set :skip_urgent_warp,  false


## Панели

    screen 1 do
      top     [ :views, :separator, :title, :spacer, :tray, :separator, :clock2 ]
    end
    screen 2 do
      top     [ :views, :seperator, :title, :spacer, :clock2 ]
    end

## Дополнения

    # Нет дополнений сейчас

## Цвета

    background_1  =   "#151515"
    background_2  =   "#202020"
    background_3  =   "#353535"

    color_silver  =   "#ebebeb"
    color_cyan    =   "#00BFFF"
    color_blue    =   "#0077bb"
    color_gray    =   "#757575"
    color_dark    =   "#303030"
    color_yellow  =   "#FFFF00"
    color_orange  =   "#ff9800"
    color_red     =   "#FF0000"

## Стили

    # Стиль для всех элементов

    style :all do
      background  background_2
      icon        color_gray
      border      color_dark, 0
      padding     0, 3
      font       "xft:terminus:pixelsize=24:antialias=false"
    end

    # Стиль отображаемых тегов

    style :views do
      foreground  color_gray

      # Стиль для активных рабочих столов

      style :focus do
        foreground  "#fecf35"
        icon        color_yellow
      end

      # Стиль для срочных заголовков окон и рабочих столов

      style :urgent do
        foreground  color_orange
        icon        color_red
      end

      # Стиль для занятых рабочих столов (рабочие столы с клиентами)

      style :occupied do
        foreground  "#b8b8b8"
        icon        color_cyan
      end
    end

    # Стиль оконного менеджера

    style :subtle do
      padding      0, 0, 0, 0
      margin       0, 0, 0, 0
      panel_top    background_1
      panel_bottom background_1
    end

    # Стиль для клиентов

    style :clients do
      padding      0, 0, 0, 0
      margin       4, 4, 4, 4
      active       color_cyan, 1
      inactive     background_3, 1
      width        75
    end

    # Стиль для заголовков окон

    style :title do
      padding      1, 4, 2, 4
      margin       0, 0, 0, 0
      foreground   color_silver
      background   background_1
      font         "xft:terminus:pixelsize=24:antialias=false"
    end

    # Стиль отображения саблетов

    style :sublets do
      padding      1, 4, 2, 4
      margin       0, 0, 0, 0
      foreground   color_silver
      background   background_1
      icon         color_blue
      font         "xft:terminus:pixelsize=24:antialias=false"
    end

    # Стиль разделителя

    style :separator do
      padding      1, 2, 2, 2
      margin       0, 0, 0, 0
      foreground   color_blue
      background   background_1
      separator    "//"
      font         "xft:terminus:pixelsize=24:antialias=false"
    end

## Гравитации

    # Вверху слева

    gravity :tl_a1,     [   0,   0,  33,  33 ]
    gravity :tl_a2,     [   0,   0,  50,  33 ]
    gravity :tl_a3,     [   0,   0,  67,  33 ]

    gravity :tl_b1,     [   0,   0,  33,  50 ]
    gravity :tl_b2,     [   0,   0,  50,  50 ]
    gravity :tl_b3,     [   0,   0,  67,  50 ]

    gravity :tl_c1,     [   0,   0,  33,  67 ]
    gravity :tl_c2,     [   0,   0,  50,  67 ]
    gravity :tl_c3,     [   0,   0,  67,  67 ]

    # Вверху в центре

    gravity :tc_a1,     [   0,   0, 100,  50 ]
    gravity :tc_a2,     [   0,   0, 100,  67 ]
    gravity :tc_a3,     [   0,   0, 100,  33 ]

    gravity :tc_b1,     [  33,   0,  34,  33 ]
    gravity :tc_b2,     [  33,   0,  34,  50 ]
    gravity :tc_b3,     [  33,   0,  34,  67 ]

    # Вверху справа

    gravity :tr_a1,     [  67,   0,  33,  33 ]
    gravity :tr_a2,     [  50,   0,  50,  33 ]
    gravity :tr_a3,     [  33,   0,  67,  33 ]

    gravity :tr_b1,     [  67,   0,  33,  50 ]
    gravity :tr_b2,     [  50,   0,  50,  50 ]
    gravity :tr_b3,     [  33,   0,  67,  50 ]

    gravity :tr_c1,     [  67,   0,  33,  67 ]
    gravity :tr_c2,     [  50,   0,  50,  67 ]
    gravity :tr_c3,     [  33,   0,  67,  67 ]

    # Слева

    gravity :l_a1,      [   0,  33,  33,  34 ]
    gravity :l_a2,      [   0,  33,  50,  34 ]
    gravity :l_a3,      [   0,  33,  67,  34 ]

    gravity :l_b1,      [   0,   0,  33, 100 ]
    gravity :l_b2,      [   0,   0,  50, 100 ]
    gravity :l_b3,      [   0,   0,  67, 100 ]

    # В центре

    gravity :c_a1,      [  33,  33,  34,  34 ]
    gravity :c_a2,      [  25,  25,  50,  50 ], :vert
    gravity :c_a3,      [   0,   0, 100, 100 ]
    gravity :c_b1,      [   0,  33, 100,  34 ]
    gravity :c_b2,      [  33,   0,  34, 100 ], :horz

    # Справа

    gravity :r_a1,      [  67,  33,  33,  34 ]
    gravity :r_a2,      [  50,  33,  50,  34 ]
    gravity :r_a3,      [  33,  33,  67,  34 ]

    gravity :r_b1,      [  67,   0,  33, 100 ]
    gravity :r_b2,      [  50,   0,  50, 100 ]
    gravity :r_b3,      [  33,   0,  67, 100 ]

    # Внизу слева

    gravity :bl_a1,     [   0,  67,  33,  33 ]
    gravity :bl_a2,     [   0,  67,  50,  33 ]
    gravity :bl_a3,     [   0,  67,  67,  33 ]

    gravity :bl_b1,     [   0,  50,  33,  50 ]
    gravity :bl_b2,     [   0,  50,  50,  50 ]
    gravity :bl_b3,     [   0,  50,  67,  50 ]

    gravity :bl_c1,     [   0,  33,  33,  67 ]
    gravity :bl_c2,     [   0,  33,  50,  67 ]
    gravity :bl_c3,     [   0,  33,  67,  67 ]

    # Внизу в центре

    gravity :bc_a1,     [   0,  50, 100,  50 ]
    gravity :bc_a2,     [   0,  33, 100,  67 ]
    gravity :bc_a3,     [   0,  67, 100,  33 ]

    gravity :bc_b1,     [  33,  67,  34,  33 ]
    gravity :bc_b2,     [  33,  50,  34,  50 ]
    gravity :bc_b3,     [  33,  33,  34,  67 ]

    # Внизу справа

    gravity :br_a1,     [  67,  67,  33,  33 ]
    gravity :br_a2,     [  50,  67,  50,  33 ]
    gravity :br_a3,     [  33,  67,  67,  33 ]

    gravity :br_b1,     [  67,  50,  33,  50 ]
    gravity :br_b2,     [  50,  50,  50,  50 ]
    gravity :br_b3,     [  33,  50,  67,  50 ]

    gravity :br_c1,     [  67,  33,  33,  67 ]
    gravity :br_c2,     [  50,  33,  50,  67 ]
    gravity :br_c3,     [  33,  33,  67,  67 ]

    # Специальные

    gravity :sp_br,     [  70,  85,  30,  15 ]
    gravity :sp_bl,     [   0,  85,  30,  15 ]
    gravity :sp_tr,     [  70,   0,  30,  15 ]
    gravity :sp_tl,     [   0,   0,  30,  15 ]

    # Gimp

    gravity :gimp_i,    [  10,   0,  80, 100 ]
    gravity :gimp_t,    [   0,   0,  10, 100 ]
    gravity :gimp_d,    [  90,   0,  10, 100 ]

    # Scratchpad

    gravity :scratchleft,   [ 2, 2, 47, 50 ]
    gravity :scratchright,  [ 51, 2, 47, 50 ]

## Захваты

    # Цикл между заданными гравитациями

    grab "W-KP_7",      [ :tl_a1, :tl_a2, :tl_a3, :tl_b1, :tl_b2, :tl_b3, :tl_c1, :tl_c2, :tl_c3 ]
    grab "W-KP_8",      [ :tc_b1, :tc_b2, :tc_b3, :tc_a3, :tc_a1, :tc_a2                         ]
    grab "W-KP_9",      [ :tr_a1, :tr_a2, :tr_a3, :tr_b1, :tr_b2, :tr_b3, :tr_c1, :tr_c2, :tr_c3 ]

    grab "W-KP_4",      [ :l_a1,  :l_a2,  :l_a3,  :l_b1,  :l_b2,  :l_b3 ]
    grab "W-KP_5",      [ :c_a1,  :c_a2,  :c_a3,  :c_b1,  :c_b2         ]
    grab "W-KP_6",      [ :r_a1,  :r_a2,  :r_a3,  :r_b1,  :r_b2,  :r_b3 ]

    grab "W-KP_1",      [ :bl_a1, :bl_a2, :bl_a3, :bl_b1, :bl_b2, :bl_b3, :bl_c1, :bl_c2, :bl_c3 ]
    grab "W-KP_2",      [ :bc_b1, :bc_b2, :bc_b3, :bc_a3, :bc_a1, :bc_a2                         ]
    grab "W-KP_3",      [ :br_a1, :br_a2, :br_a3, :br_b1, :br_b2, :br_b3, :br_c1, :br_c2, :br_c3 ]

    grab "W-KP_0",      [ :sp_br, :sp_bl, :sp_tr, :sp_tl ]

    # Переход к следующему непустому рабочему столу

    grab "W-B4" do
        vArr = Subtlext::View[:all];
        cindx = vArr.index(Subtlext::View.current);
        for i in 1..vArr.size do
            cV = vArr[(i + cindx) % vArr.size];
            if (!cV.clients.empty? && Subtlext::View.visible.index(cV) == nil) then
                cV.jump;
                break;
            end
        end
    end

    # Переход к предыдущему непустому рабочему столу

    grab "W-B5" do
        vArr = Subtlext::View[:all].reverse;
        cindx = vArr.index(Subtlext::View.current);
        for i in 1..vArr.size do
            cV = vArr[(i + cindx) % vArr.size];
            if (!cV.clients.empty? && Subtlext::View.visible.index(cV) == nil) then
                cV.jump;
                break;
            end
        end
    end

    # Переключение между рабочими столами

    grab "W-1",       :ViewSwitch1
    grab "W-2",       :ViewSwitch2
    grab "W-3",       :ViewSwitch3
    grab "W-4",       :ViewSwitch4
    grab "W-5",       :ViewSwitch5
    grab "W-6",       :ViewSwitch6
    grab "W-7",       :ViewSwitch7
    grab "W-8",       :ViewSwitch8
    grab "W-9",       :ViewSwitch9
    grab "W-0",       :ViewSwitch0

    # Действия с оконным менеджером

    grab "W-C-r",     :SubtleReload
    grab "W-A-r",     :SubtleRestart
    grab "W-C-q",     :SubtleQuit

    # Действия с окнами

    grab "W-B1",      :WindowMove
    grab "W-B3",      :WindowResize

    grab "W-s",       :WindowStick
    grab "W-f",       :WindowFloat
    grab "W-z",       :WindowZaphod
    grab "W-space",   :WindowFull
    grab "W-q",       :WindowKill

    # Scratchpad

    grab "F1" do
       if (c = Subtlext::Client.first("scratchleft"))
         c.toggle_stick
         c.focus
         c.raise
         c.toggle_float
       elsif (c = Subtlext::Client.spawn("urxvtc -name scratchleft"))
         c.tags  = []
         c.flags = [ :stick ]
       end
    end

    grab "F2" do
       if (c = Subtlext::Client.first("scratchright"))
         c.toggle_stick
         c.focus
         c.raise
         c.toggle_float
       elsif (c = Subtlext::Client.spawn("urxvtc -name scratchright"))
         c.tags  = []
         c.flags = [ :stick ]
       end
    end

    # Ярлыки

    grab "W-Return",  "urxvtc -name terminal"
    grab "W-m",       'dmenu_run -fn "xft:inconsolata:pixelsize=24" -nb "#202020" -nf "#757575" -sb "#757575" -sf "#202020" -p "RUN:" -i'
    grab "Print",     "~/bin/upload-full-shot.sh"
    grab "W-Print",   "~/bin/upload-window-shot.sh"

## Метки

    tag "scratchleft" do
      match   :instance => "scratchleft"
      gravity :scratchleft
      stick   true
      urgent  true
    end

    tag "scratchright" do
      match   :instance => "scratchright"
      gravity :scratchright
      stick   true
      urgent  true
    end

    # размещение

    tag "web_full" do
      match "chromium|firefox"
      gravity :c_a3
    end

    tag "web_mini" do
      match "uzbl-tabbed|yandex-browser-beta"
      gravity :r_b1
    end

    # Apps definition
    tag "terms" do
      match :instance => "terminal"
    end

    tag "terminal-ssh-1" do
      match :instance => "terminal-ssh-1"
      gravity :bl_b1
    end

    tag "terminal-ssh-2" do
      match :instance => "terminal-ssh-2"
      gravity :tl_b1
    end

    tag "terminal-middle" do
      match :instance => "terminal-middle"
      gravity :c_b2
    end

    tag "terminal-top-right" do
      match :instance => "terminal-top-right"
      gravity :tr_a1
    end

    tag "terminal-right" do
      match :instance => "terminal-right"
      gravity :r_a1
    end

    tag "terminal-bottom-right" do
      match :instance => "terminal-bottom-right"
      gravity :br_a1
    end

    tag "text_editor" do
      match :instance => "gvim|subl3|atom"
      gravity :r_b3
    end

    tag "file_manager" do
      match :instance => "thunar|mc|Sunflower|pcmanfm|spacefm"
      gravity :l_b1
    end

    tag "fm_delete" do
      match :instance => "main.py"
      gravity :l_a1
    end

    tag "image_viewer" do
      match :instance => "feh|nomacs"
      gravity :r_b3
    end

    tag "office_suite" do
      match :instance => "libreoffice"
      gravity :bl_b2
    end

    tag "irc_client" do
      match :instance => "hexchat|weechat"
      gravity :c_b2
    end

    tag "jabber_client" do
      match :instance => "profanity|poezio|mcabber|Pidgin"
      gravity :r_b1
    end

    tag "telegram_client" do
      match :instance => "Telegram|telegram-cli"
      gravity :l_b1
    end

    tag "mail_client" do
      match :class => "claws-mail|geary|thunderbird"
      gravity :c_a3
    end

    tag "volume_control" do
      match :instance => "pavucontrol"
      gravity :tl_b1
    end

    tag "music_player" do
      match :instance => "ncmpcpp"
      gravity :r_b1
    end

    tag "video_player" do
      match :class => "mpv"
      gravity :r_b3
    end

    tag "youtube_browser" do
      match :instance => "mpsyt"
      gravity :c_b2
    end

    tag "media_browser" do
      match :instance => "media-browser"
      gravity :bl_b1
    end

    tag "torrent_client" do
      match :instance => "transmission-remote-gtk"
      gravity :r_b1
    end

    tag "teamspeak" do
      match :instance => "ts3client"
      gravity :c_b2
    end

    tag "urtconnector" do
      match :instance => "urtconnector"
      gravity :l_b1
    end

    tag "steam" do
      match :instance => "Steam"
      gravity :r_b1
    end

    tag "games" do
      match :instance => "XRebirth|subtle|Minecraft*|minecraft*|urbanterror*|Quake3-UrT*|h4ckasmod*"
      gravity :c_a3
    end

    tag "flash" do
      match "<unknown>|plugin-container|exe|operapluginwrapper|npviewer.bin"
    end

    # Modes
#    tag "stick" do
#      match "mplayer"
#      stick true
#    end

    tag "float" do
      match "display"
      float true
    end

    tag "fixed" do
      match "display|gimp_*"
      fixed true
    end

    tag "borderless" do
      match "display|feh"
      borderless true
    end

    tag "urgent" do
      match "display"
      urgent true
    end

#    tag "resize" do
#      match "mplayer"
#      resize true
#    end

    # Gimp
    tag "gimp_image" do
      match   :role => "gimp-image-window"
      gravity :gimp_i
    end

    tag "gimp_toolbox" do
      match   :role => "gimp-toolbox$"
      gravity :gimp_t
    end

    tag "gimp_dock" do
      match   :role => "gimp-dock"
      gravity :gimp_d
    end

    tag "gimp_scum" do
      match   :role => "gimp-.*|screenshot"
    end

## Рабочие столы

    iconpath = "#{ENV["HOME"]}/.local/share/subtle/icons"
	  icons = true

    view "1:main" do
      match "terms|terminal-ssh-1|terminal-ssh-2|terminal-middle|terminal-right|terminal-top-right|terminal-bottom-right"
      icon Subtlext::Icon.new("#{iconpath}/terminal.xbm")
    end

    view "2:edit" do
      match "file_manager|fm_delete|text_editor|image_viewer|office_suite"
      icon Subtlext::Icon.new("#{iconpath}/clip.xbm")
    end

    view "3:web" do
      match "web_full|web_mini|flash"
      icon Subtlext::Icon.new("#{iconpath}/fox.xbm")
    end

    view "4:chat" do
      match "irc_client|jabber_client|telegram_client"
      icon Subtlext::Icon.new("#{iconpath}/mail.xbm")
    end

    view "5:mail" do
      match "mail_client"
      icon Subtlext::Icon.new("#{iconpath}/mail.xbm")
    end

    view "6:media" do
      match "volume_control|torrent_client|video_player|youtube_browser|media_browser|music_player|media_full|gimp_*"
      icon Subtlext::Icon.new("#{iconpath}/paint.xbm")
    end

    view "7:fun" do
      match "urtconnector|steam|minecraft|teamspeak"
      icon Subtlext::Icon.new("#{iconpath}/game.xbm")
    end

    view "8:games" do
      match "games"
      icon Subtlext::Icon.new("#{iconpath}/game.xbm")
    end

    view "9:other" do
      match "default|<unknown>"
      icon Subtlext::Icon.new("#{iconpath}/question.xbm")
    end

## Sublets

    sublet :clock2 do
      interval       1
      time_format    "%H:%M:%S"
      time_color     color_silver
      date_format    "%d/%m/%y"
      date_color     color_silver
    end

## Хуки

  # Автоматический старт

  on :start do

    # Системное

    Subtlext::Client.spawn "compton --config ~/.compton.conf -b"
    Subtlext::Client.spawn "setxkbmap -option 'grp:alt_shift_toggle,grp_led:scroll'"
    Subtlext::Client.spawn "urxvtd"
    Subtlext::Client.spawn "sh ~/.fehbg &"
    Subtlext::Client.spawn "nm-applet"
    Subtlext::Client.spawn "blueman-applet"
    Subtlext::Client.spawn "dropbox"
    Subtlext::Client.spawn "insync start"

    # Рабочий стол 1:main

    Subtlext::Client.spawn "sleep 3s && urxvtc -name terminal-ssh-1"
    Subtlext::Client.spawn "sleep 3s && urxvtc -name terminal-ssh-2"
    Subtlext::Client.spawn "sleep 2s && urxvtc -name terminal-middle"
    Subtlext::Client.spawn "sleep 2s && urxvtc -name terminal-right"
    Subtlext::Client.spawn "sleep 2s && urxvtc -name terminal-top-right"
    Subtlext::Client.spawn "sleep 2s && urxvtc -name terminal-bottom-right"

    # Рабочий стол 2:edit

    Subtlext::Client.spawn "pcmanfm"
    Subtlext::Client.spawn "atom"

    # Рабочий стол 3:web

    Subtlext::Client.spawn "chromium"

    # Рабочий стол 4:chat

    Subtlext::Client.spawn "sleep 5s && urxvtc -name weechat -e weechat"
    Subtlext::Client.spawn "sleep 3s && urxvtc -name poezio -e poezio"
    Subtlext::Client.spawn "telegram"

    # Рабочий стол 5:mail

    Subtlext::Client.spawn "thunderbird"

    # Рабочий стол 6:media

    Subtlext::Client.spawn "sleep 3s && urxvtc -name mpsyt -e mpsyt"
    Subtlext::Client.spawn "pavucontrol"
    Subtlext::Client.spawn "sleep 2s && urxvtc -name ncmpcpp -e ncmpcpp"
    Subtlext::Client.spawn "sleep 2s && urxvtc -name media-browser -e ranger"

    # Рабочий стол 7:fun

    Subtlext::Client.spawn "urtconnector"
    Subtlext::Client.spawn "teamspeak3"
    Subtlext::Client.spawn "steam"

  end

# Client autofocus

  on :client_create do |c|
    c.views.first.jump
    c.focus
    c.raise
  end

### Конец конфигурационного файла
