#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

#set text(font: "New Computer Modern")
#set par(justify: true)

#let local_change(x) = emph([#x])
#let new_rule(x) = underline([#x])
#let reformulation(x) = highlight(fill: gray, [#x])
#let highl(x) = highlight(fill: yellow, [#x])
#let rule_removed = [\_-\_-]
#let not_applicable = [—]
#let na = not_applicable

#align(center)[
  #text(size: 18pt, weight: "bold")[Poängblad RoboCupJunior OnStage 2026]
  #linebreak()
  #text(size: 14pt, weight: "bold")[Teknisk Intervju]
]

#v(0.5cm)

#text(size: 11pt, weight: "bold")[Lagnamn:]
#v(-0.2cm)
#line(start: (12% + 0pt, 0% + 0pt), length: 88%)

#table(
  columns: (3cm, auto, auto),
  inset: 10pt,
  align: (left, left, right),
  stroke: 0.5pt,
  fill: (_, row) => {
    if row == 0 { 
      gray.lighten(40%) 
    } else if row == 7 { 
      rgb(255, 220, 220) 
    } else { 
      white 
    }
  },
  
  // Header
  [*#text(size: 11pt)[Kategori]*], [*#text(size: 11pt)[Exempel på vad som kan ge poäng]*], [*#text(size: 13pt)[Poäng]*],
  
  // Row 1
  new_rule[
    #text(size: 11pt)[*Tekniska färigheter*]], 
    new_rule[
      #text(size: 8pt)[
        
      *Förståelse för programmet och hur programvara fungerar,* till exempel genom att beskriva:
      #list(
        [Resonemanget bakom valet av programmeringsspråk.],
        [Hur modeller, dataset och/eller bibliotek skapades eller anpassades för att möta specifika behov.],
        [Strategier för att skriva effektiv, optimerad och väl dokumenterad kod, inklusive användning av versionshantering.]
      )
    ]
    ], 
  new_rule[#text(size: 13pt)[/20]],
  
  // Row 2
  new_rule[
    #text(size: 11pt)[*Tekniska färigheter*]], 
    new_rule[
      #text(size: 8pt)[
        
      *Förståelse för systemet och hur hårdvara fungerar,* till exempel genom att beskriva:
      #list(
        [Val av material, mikrokontrollers, sensorer och aktuatorer.],
        [Val av system, till exempel visuell eller ljudbaserad igenkänning, funktionella armar/händer/ansikten, vägledning, navigering, styrsystem eller pneumatik.],
        [Utveckling av egen elektronik (inklusive kretskort/PCB) eller mekanisk design.],
        [Strömhantering, reglering och val av batterier.],
        [Avancerad mobilitet – till exempel omnidirektionella robotar, benrobotar eller balanserande robotar.],
        [Stabil konstruktion, systemkinematik och design av specialkomponenter.],
        [Hållbara designval, inklusive val av material.],
        [Robotar som kan uppfatta sin omgivning och dynamiskt reagera på oväntade händelser med lämpliga åtgärder.],
        [Integration och kommunikation mellan flera sensorsystem.],
        [Design för robot–robot- och/eller människa–robot-interaktion.]
      )
    ]
    ], 
  new_rule[#text(size: 13pt)[/30]],
  
  // Row 3
  new_rule[
    #text(size: 11pt)[*Tekniska färigheter*]], 
    new_rule[
      #text(size: 8pt)[
        
      *Teknikens svårighetsgrad och val av teknik,* till exempel genom att beskriva:
      #list(
        [Komplexiteten i mjukvaru- och hårdvarudesign.],
        [Hur designval görs för att säkerställa att systemen är tillförlitliga och hållbara.],
        [System med hög precision.]
      )
    ]
    ], 
  new_rule[#text(size: 13pt)[/10]],
  
  // Row 4
  new_rule[#text(size: 11pt)[*Ingenjörsmässig \ designprocess*]], 
    new_rule[
    #text(size: 8pt)[
      *Hur teamet bearbetar sitt arbete och sitt lärande, inklusive den iterativa processen som teamet använde för att utveckla eller förbättra sitt robotprojekt,* till exempel genom att beskriva:
      #list(
        [Hur samarbetade teamet i den iterativa processen kring robotens/kodens design?],
        [Hur övervann eller löste teamet de utmaningar som uppstod under utvecklingen av mjukvara och hårdvara tillsammans?],
        [Om AI används, hur är AI involverat i någon del av projektets utveckling?],
        [Hur använde teamet tydliga bevis på kalibrering, testning och felsökning, forskning och utveckling i arbetet med att förbättra robotens prestanda?],
        [Läranderesultaten – vilka färdigheter eller kompetenser som utvecklades genom projektet.]
      )
    ]
  ]
  , 
  new_rule[#text(size: 13pt)[/20]],
  
  // Row 5
  new_rule[#text(size: 11pt)[*Demonstration av valda funktioner*]], 
  new_rule[
    #text(size: 8pt)[
      Demonstration av att de fyra funktionerna fungerar: \
      #text(size: 11pt)[
      *Valda funktioner:*
      - 1: #h(9cm) /3
      - 2: #h(9cm) /3
      - 3: #h(9cm) /3
      - 4: #h(9cm) /3
      ]
      3 - fungerar utan problem 2 - fungerar med mindre problem \ 1 - fungerar delvis, 0 - fungerar inte alls
    ]
  ], 
  new_rule[#text(size: 13pt)[/12]],
  
  // Row 6
  [#text(size: 11pt)[*Lagarbete och laganda*]], 
  [
    #text(size: 8pt)[
      Bevis på att projektet genomförts genom lagarbete, problemlösande och i
      Robocup Juniors anda. 
    ]
  ], 
  new_rule[#text(size: 13pt)[/8]],
  
  // Row 7 - Red background for poängavdrag
  [#text(size: 11pt)[*Poäng- #linebreak() avdrag*]], 
  [
    #text(size: 8pt)[
      #list(
        [Domarna uppfattar att arbetet inte var genomfört av en lagmedlem],
        [Lagmedlemmar är oförmögna att diskutera sin tekniska
        inblandning med robotarna],
        [Laget bryter mot något av reglerna uppsatta i regelboken]
      )
    ]
  ], 
  new_rule[#text(size: 9pt)[(Upp till\ domarna)]],
  
  // Row 8
  [#text(size: 11pt)[*Slutpoäng*]], 
  [], 
  new_rule[#text(size: 13pt, weight: "bold")[/100]]

  
)

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[Poängblad RoboCupJunior OnStage 2026]
  #linebreak()
  #text(size: 14pt, weight: "bold")[Föreställning]
]


#v(0.5cm)

#text(size: 11pt, weight: "bold")[Lagnamn:]
#v(-0.2cm)
#line(start: (12% + 0pt, 0% + 0pt), length: 88%)

#table(
  columns: (4cm, auto, auto),
  inset: 10pt,
  align: (left, left, right),
  stroke: 0.5pt,
  fill: (_, row) => {
    if row == 0 { 
      gray.lighten(40%) 
    } else if row == 4 { 
      rgb(255, 220, 220) 
    } else { 
      white 
    }
  },
  
  // Header
  [*#text(size: 11pt)[Kategori]*], [*#text(size: 11pt)[Exempel på vad som kan ge poäng]*], [*#text(size: 13pt)[Poäng]*],
  
  // Row 1
  [#text(size: 11pt)[*Visuell påverkan och kvalité av hela föreställningen*]], 
  [
    #text(size: 8pt)[
      Föreställningens robotinslag gör ett försök att kommunicera och engagera
      publiken. Till exempel:
      #list(
        [Det finns en tydlig röd tråd/tema/idé/budskap genom hela
        föreställningen],
        [Temat är tydligt och sammanhängande genom hela föreställningen],
        [Föreställningen är engagerande och tar steg att underhålla
        publiken],
        [Effektiv användning av scenytan och rekisitan, relativt till temat eller den
        sammanhängande idén],
        [Robotarna #new_rule([och rekvisitan]) är ett komplement till föreställningen]
      )
    ]
  ], 
  new_rule[#text(size: 13pt)[/30]],
  
  // Row 2
  [#text(size: 11pt)[*Robot interaktion och systemintegrering*]], 
  new_rule[
    #text(size: 8pt)[
      #list(
        [Framträdandet innehåller komplexa eller utmanande rörelser som passar temat och tillför värde till framträdandet.], 
        [Teamet använde intressanta, smidiga och naturliga interaktioner mellan robotar och/eller människor som tillför värde till framträdandet.], 
        [Människor på scenen *distraherar aldrig publiken* från robotarnas handlingar, och deras rörelser förstärker hela robotframträdandet.], 
        [Alla robotsystem (t.ex. sensorer, motorer) används effektivt, på flera sätt och genom hela framträdandet.],
        [Rekvisita som är interaktiv och fullt integrerad i framträdandet, och tillför värde till framträdandet.]
      )
    ]
  ], 
  new_rule[#text(size: 13pt)[/30]],
  
  // Row 3
  [#text(size: 11pt)[*Effektiv #linebreak() implementering av presenterade funktioner*]], 
  [
    #text(size: 8pt)[
      Implementering av de fyra funktionerna:
      Bra #new_rule([implementation, synlighet]) och effekt - funktionerna fungerar som förväntat och
      lägger till meningsfullt värde till föreställningen. Max #new_rule([10]) poäng per funktion.
      

      #text(size: 11pt)[
      *Valda funktioner:*
      - 1: #h(9cm) /#new_rule([10])
      - 2: #h(9cm) /#new_rule([10])
      - 3: #h(9cm) /#new_rule([10])
      - 4: #h(9cm) /#new_rule([10])
      ]
    ]
  ], 
  new_rule[#text(size: 13pt)[/40]],
  
  // Row 4 - Red background for poängavdrag
  [#text(size: 11pt)[*Poängavdrag #linebreak() (-3 poäng per #linebreak() förseelse)*]], 
  [
    #text(size: 8pt)[
      #list(
        [Varje oplanerad ingripande av människor #new_rule([inom scenytan]) (inkludera fjärr eller
        mänskligt kontrollerade rörelser)],
        [För varje omstart],
        [Varje 10 sekunder som överstiger tilldelad tid]
      )
      
      Föreställningar kan aldrig få mindre än 0 poäng.
    ]
  ], 
  [],
  
  // Row 5
  [#text(size: 11pt)[*Slutpoäng*]], 
  [], 
  new_rule[#text(size: 13pt, weight: "bold")[/100]]
)