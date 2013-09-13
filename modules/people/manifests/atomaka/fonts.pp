class people::atomaka::fonts {
 #Install fonts
  exec { 'Font: Hermit':
    command => "curl -L http://www.p5dev.com/boxen/UbuntuMono-R.ttf -o /Users/${::luser}/Library/Fonts/UbuntuMono.ttf",
    creates => "/Users/${::luser}/Library/Fonts/UbuntuMono.ttf"
  }
}
