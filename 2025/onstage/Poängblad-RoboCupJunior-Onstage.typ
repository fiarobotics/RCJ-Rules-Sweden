#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

#set text(font: "New Computer Modern")
#set par(justify: true)

#align(center)[
  #text(size: 18pt, weight: "bold")[Poängblad RoboCupJunior OnStage 2025]
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
    } else if row == 6 { 
      rgb(255, 220, 220) 
    } else { 
      white 
    }
  },
  
  // Header
  [*#text(size: 11pt)[Kategori]*], [*#text(size: 11pt)[Exempel på vad som kan ge poäng]*], [*#text(size: 13pt)[Poäng]*],
  
  // Row 1
  [#text(size: 11pt)[*Programmering*]], 
  [
    #text(size: 8pt)[
      Förmåga att förklara källkod och interaktionen mellan hårdvara och
      mjukvara:
      #list(
        [Valet av programmeringsspråk],
        [Svårigheter med mjukvaran],
        [Utveckling av korrekta modeller, dataset och/eller bibliotek som
        används för att lösa programmeringsproblemen],
        [Effektiv och optimerad kod med klar dokumentation och
        kommentarer, samt användning av version control],
        [Utveckling av kalibrering, testning och debugging funktioner],
        [Användande av AI/AR teknik.]
      )
    ]
  ], 
  [#text(size: 13pt)[/7]],
  
  // Row 2
  [#text(size: 11pt)[*Elektro- mekaniska system*]], 
  [
    #text(size: 8pt)[
      Förmåga att förklara de val som gjordes under designen av
      elektromekaniska system:
      #list(
        [Valet av material, mikrokontroller och ställdon],
        [Utveckling av egna kretsar],
        [Energihantering, reglerteknik och batterival],
        [Val under designprocessen för att säkerställa pålitlighet],
        [Hållbara design val inklusive val av material]
      )
      
      Förklara hur de valda systemen är ändamålsenliga:
      #list(
        [Avancerad rörlighet t.ex. robotar med ben],
        [Stabila konstruktioner och design av egna komponenter],
        [System med hög precision inklusive pneumatik],
        [Funktionella händer/armar/ansikten],
        [Robotarmar designade för objektmanipulering],
        [Självbalanserande system]
      )
    ]
  ], 
  [#text(size: 13pt)[/7]],
  
  // Row 3
  [#text(size: 11pt)[*Sensorer och #linebreak() kommunikations- system*]], 
  [
    #text(size: 8pt)[
      Förmåga att förklara den roll som sensorer och kommunikationsutrustning
      och hur roboten interagerar med sin scen omgivning:
      #list(
        [Robot system som dynamiskt kan hantera oförväntade händelser],
        [Robotarna har en förståelse om sin omgivning och kan reagera på
        detta],
        [Integreringen av flera sensorsystem för att lösa problem],
        [Utveckling av kommunikation mellan sensorer],
        [Utveckling av kommunikations arkitekturer (asymmetrisk
        kommunikation)]
      )
      
      Förklara hur de valda systemen är ändamålsenliga:
      #list(
        [Visuell/Ljud förståelse],
        [Utvecklade orienterings, navigations och kontrollsystem],
        [Robot till Robot och/eller naturlig robot till människa interaktion],
        [Scen/Robot lokaliseringssystem]
      )
    ]
  ], 
  [#text(size: 13pt)[/7]],
  
  // Row 4
  [#text(size: 11pt)[*Innovation #linebreak() och #linebreak() funktions- utveckling*]], 
  [
    #text(size: 8pt)[
      Förmåga att förklara och förevisa innovativa funktioner eller robot
      komponenter:
      #list(
        [Innovation genomförd med tydlig bevis på testning, forskning och
        utveckling. Med innovationer som kan inspirera framtida deltagare],
        [Laget kan förklara sin utveckling baserat på tidigare återkoppling]
      )
    ]
  ], 
  [#text(size: 13pt)[/6]],
  
  // Row 5
  [#text(size: 11pt)[*Lagarbete och laganda*]], 
  [
    #text(size: 8pt)[
      Bevis på att projektet genomförts genom lagarbete, problemlösande och i
      Robocup Juniors anda. 
    ]
  ], 
  [#text(size: 13pt)[/3]],
  
  // Row 6 - Red background for poängavdrag
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
  [#text(size: 13pt)[/-15]],
  
  // Row 7
  [#text(size: 11pt)[*Slutpoäng*]], 
  [], 
  [#text(size: 13pt, weight: "bold")[/30]]
)

#pagebreak()

#align(center)[
  #text(size: 18pt, weight: "bold")[Poängblad RoboCupJunior OnStage 2025]
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
        [Effektiv användning av scenytan, relativt till temat eller den
        sammanhängande idén],
        [Robotarna är ett komplement till föreställningen]
      )
    ]
  ], 
  [#text(size: 13pt)[/12]],
  
  // Row 2
  [#text(size: 11pt)[*Robot interaktion och systemintegrering*]], 
  [
    #text(size: 8pt)[
      #list(
        [Interaktionen med original och innovativ rekvisita eller sceneri som
        påverkar föreställningen och tillför värde],
        [Svåra rörelse används och är ett komplement till temat],
        [Effektfull och intressant interaktion mellan robotar och/eller
        människor],
        [Samtliga robotsystem används genomgående i föreställningen]
      )
    ]
  ], 
  [#text(size: 13pt)[/12]],
  
  // Row 3
  [#text(size: 11pt)[*Effektiv #linebreak() implementering av presenterade funktioner*]], 
  [
    #text(size: 8pt)[
      Implementering av de fyra funktionerna:
      Bra implementering och effekt - funktionerna fungerar som förväntat och
      lägger till meningsfullt värde till föreställningen. Max 4 poäng per funktion.
      

      #text(size: 11pt)[
      **Valda funktioner:**
      - 1: #h(9cm) /4
      - 2: #h(9cm) /4
      - 3: #h(9cm) /4
      - 4: #h(9cm) /4
      ]
    ]
  ], 
  [#text(size: 13pt)[/16]],
  
  // Row 4 - Red background for poängavdrag
  [#text(size: 11pt)[*Poängavdrag #linebreak() (-3 poäng per #linebreak() förseelse)*]], 
  [
    #text(size: 8pt)[
      #list(
        [Varje oplanerad ingripande av människor (inkludera fjärr eller
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
  [#text(size: 13pt, weight: "bold")[/40]]
)