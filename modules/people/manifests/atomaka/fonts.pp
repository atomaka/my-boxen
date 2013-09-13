class people::atomaka::fonts {
 #Install fonts
  exec { 'Font: Hermit':
    command => "curl -L http://www.p5dev.com/boxen/Hermit.dfont -o /Users/${::luser}/Library/Fonts/Hermit.dfont",
    creates => "/Users/${::luser}/Library/Fonts/Hermit.dfont"
  }
}
