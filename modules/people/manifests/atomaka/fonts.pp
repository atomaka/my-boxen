class people::atomaka::fonts {
 #Install fonts
  exec { 'Font: Source Code Pro':
    command => "curl -L http://www.p5dev.com/boxen/SourceCodePro.ttf -o /Users/${::luser}/Library/Fonts/SourceCodePro.ttf",
    creates => "/Users/${::luser}/Library/Fonts/SourceCodePro.ttf"
  }
}
