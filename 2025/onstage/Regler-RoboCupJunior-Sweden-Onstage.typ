#let local_change(x) = emph([#x])
#let new_rule(x) = underline([#x])
#let reformulation(x) = highlight(fill: gray, [#x])
#let highl(x) = highlight(fill: yellow, [#x])
#let rule_removed = [\_-\_-]
#let not_applicable = [—]
#let na = not_applicable

#set text(lang: "sv")
#show heading.where(level: 1): text.with(size: 1.4em)
#show heading.where(level: 2): text.with(size: 1.2em)
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}
#set enum(numbering: "1.a.i.")

#show link: set text(fill: blue)

#grid(
  columns: 1fr, rows: (3fr, 6fr, 5fr),
  [
    #align(center, image("images/fia-logga.png", height: 6.0cm))],
  [
    #align(
      center,
      text(30pt)[
        Regler \
        RoboCupJunior OnStage 2025
      ],
    )
  ],
  [
    #align(center, image("images/rcj-cover.png"))
  ],
)

#set page(
  header: image("./images/fia-header.png", height: 80%),
  footer: context [Publicerad: #datetime.today().display() #h(1fr) #counter(page).display("1/1", both: true)],
)



= Förord
== Regeländringar
#local_change([Regler markerade så här är annorlunda från de internationella reglerna.])

#new_rule([Regler markerade så här är ändrade från tidigare år.])

#reformulation([Regler markerade så här är omformulerade från tidigare år.])

Regler markerade med #rule_removed är bortplockade från föregående år.

Dessa regler avviker delvis från de internationella reglerna, de regler som inte
tillämpas är bortplockade och ersatta med "#na". Detta är för att denna regelbok
ska behålla samma numrering av reglerna som de internationella reglerna.

== Årets Scen
Scenen för OnStage 2025 kommer vara placerad på samma nivå som domarna.

Scenen kommer vara 5x4 meter.

Projektorduken kommer vara placerad ca 1 meter ovanför och 2.5 meter bakom scenen.

#outline()

#set heading(numbering: "1.")

= Sammanfattning 
OnStage är öppen tävlingsgren där lagen får skapa en kreativ och underhållande robotuppvisning. Uppvisningen kan vara allt från en dans, till trolleritrick, till en teaterpjäs, till en konstutställning, eller något helt annat. Lagen uppmuntras att vara kreativa, innovativa och underhållande, både i design av sina robotar och sin uppvisning.

Lagen kommer välja ut fyra av sin robots funktioner under den tekniska intervjun vilka de särskilt döms efter. Lämpligt är att framföra de tekniska lösningar och implementationer som laget tycker är bäst. Några exempel av robotfunktioner är:
- Rörelseförmåga
- Objekt/människo-detektion och undvikande
- Elektromekanisk design
- Interaktion med människor/robotar/rekvisita
- Manipulation av saker
- Lokalisering och kartläggning

För poängfördelningen, se OnStage Poängbladet.

Varje lagmedlem skall även kunna visa en förståelse för sina respektive områden under den tekniska intervjun.

Lycka till!

#h(5fr) // Slight padding
#figure(
  stack(
      dir: ltr,       // left-to-right
      spacing: 2mm,   // space between contents
      image("images/ex1.jpg", width: 50%),
      image("images/ex2.jpg", width: 50%),
  ),
)

= #new_rule([Generella Regler])
== Lagkrav
=== Lag Storlek

*Minsta storlek:* Ett lag måste bestå av minst 2 medlemmar.

*Största storlek:* #na

*Delade medlemmar och robotar:* Inga robotar får delas mellan lagen, #local_change([man får dock tävla i flera lag]).

*Mentorer:* Varje lag måste ha minst en mentor registrerad och deltagande på tävlingen.

=== Ålderskrav

*Lagmedlemmar:* #local_change([Tävlande får inte vara mer än 19 år gammal på den 1 Juli det året de tävlar.])

=== Lagmedlemmar

*Ingångsligor*: #na

*Tekniska roller:* Alla lagmedlemmar ska ha en teknisk roll (mekanik, design, elektronik, mjukvara osv.) och ska kunna förklara sin roll till en domare. 


== Robotkrav
=== Robotens kommunikation
#na

=== Robotens säkerhet
*Spänning:*
- Robotar får inte använda nätspänning.
- Högst tillåten spänning: 48V DC eller 25V AC RMS.
- Spänningen måste vara lätt mätbar under inspektionen och mätpunkterna ska
  vara övertäckta under omgångarna eller designade så att säkerheten inte
  äventyras.

*Batterisäkerhet:*
- Litihum batterier ska förvaras i säkerhets påsar, och laddning ska övervakas
  av en lagmedlem i tävlingsområdet.
- Lag måste följa säkerhetsprotokollen, lag som inte följer säkerhetsprotokollen
  riskerar diskvalifikation.

*Robotens säkerhet:*
- Energihantering: Säkra batterier, säker kablage och nödstoppfunktionalitet.
- Mekanisk säkerhet: Inga vassa kanter, klämskador eller andra faror.
- Farligt beteende: Lag måste rapportera potentiellt farliga robotbeteenden
  minst två veckor före tävlingen.
== #na

== Uppförandekod
=== Anda
+ Alla deltagare på RoboCup Juniors tävlingar förväntas respektera
  målen och idealen som är utsatta av den Internationella RoboCup Juniors
  uppdragsbeskrivning.
+ Volontärerna, domarna och arrangörerna skall eftersträva att tävlingen är
  rättvis och rolig.
+ Det viktiga är inte vilka som vinner, det viktiga är att man lär sig och har
  roligt. 	

=== Fair Play
+ Robotar som medvetet och/eller upprepat skadar andra robotar eller
  tävlingsområdet skall bli diskvalificerad från tävlingen och anmälas.
+ Människor som medvetet och/eller upprepat skadar andra robotar eller
  tävlingsområdet skall bli diskvalificerad från tävlingen och anmälas.
+ Det förväntas att samtliga lag eftersträvar att tävlingen sköts på ett
  rättvist sätt.

=== Uppträdande
+ Varje lag ansvarar för att de har förstått reglerna och för att de vid behov
  av klargörande kontakta tävlingsarrangörerna.
+ De tävlande ansvarar för att vara uppmärksam för andra personer och robotar
  när de rör sig runt på tävlingsområdet.
+ Lag får ej ta sig in andra lags arbetsområden utan att fått tillstånd från det
  andra laget.
+ Lagen är ansvariga för att de håller sig informerade om de olika tiderna som
  finns på tävlingen och att de håller sig till dessa.
+ De tävlande och sällskap kan bli uppmanade att lämna tävlingsområdet om de
  stör, och kan bli diskvalificerade om störningen är grov nog.
+ Domare och tävlingsanordnare ansvarar för att reglerna efterföljs och att de
  tillämpas lika gentemot samtliga tävlande, vid oenighet skall beslutet granskas
  av huvuddomaren vars beslut är slutgiltigt.
+ Lagen förväntas vara på plats i förväg på startdagen så att de kan
  delta på alla viktiga uppstartsevenemang så som registrering, intervjuer,
  kaptens/mentormöte med flera.

=== Mentorer
+ Bara lagmedlemmar får befinna sig i lagens arbetsområden. Mentorer, lärare,
  familjemedlemmar, översättare med mera får ej befinna sig där.
+ Bara lagmedlemmar får ha varit involverade i byggandet, reparationer eller
  programmeringen av roboten både före och under tävlingen.
+ Vid första uppkomsten av utomstående påverkan på roboten eller en domares
  beslut så kommer en varning att ges. Om beteendet inte slutar kan laget bli
  diskvalificerat.
+ Robotar skall vara ett projekt genomfört av lagmedlemmarna.

=== Värderingar och Integritet
+ Fusk och dåligt uppträdande tolereras inte. Två exempel på fusk är:
  - Mentorer som arbetar på de tävlandes mjukvara eller hårdvara under tävlingen.
  - Mer erfarna tävlande arbetar på annat lags robot. Det är dock tillåtet att
    ge andra lag råd.
+ Om det efter prisutdelningen upptäcks att fusk har uppkommit så kan priset
  dras tillbaka.
+ Vid grovt brott mot uppförandekoden genomfört av en mentor så kan denne
  personen bannlysas från alla framtida RoboCup Junior tävlingar.
+ Lag som bryter mot uppförandekoden kan diskvalificeras från tävlingen. Även
  enstaka personer inom lagen kan bli diskvalificerade.
+ Domare kan ge en varning till ett lag vid fall av mindre överträdelser av
  uppförandekoden. Ett lag/lagmedlem kan vid grövre överträdelser eller upprepade
  överträdelser bli diskvalificerade utan att bli varnade.

=== Delning
+ Målet med RoboCupJunior är att fostra en anda av innovation och lärande inom
  och mellan lagen.
+ —
+ De tävlande uppmuntras att ställa frågor med sina medtävlande för att utveckla
  en kultur av nyfikenhet och upptäckande.

= Bedömningsöversikt

Lagen döms i följande kategorier:
- #na
- #na
- Föreställningen (ca 60% av poängen)
- Teknisk Intervjun (ca 40% av poängen)

Lagen skall välja ut fyra av sina robots funktioner under den tekniska intervjun. Ett sätt att välja dessa är att besvara frågorna "Vad tror vi är våra bästa tekniska, interaktions- och designlösningar?" och "Vad tror vi får oss att stå ut från dem andra lagen?". VM erbjuder även #link("https://robocup-junior.github.io/onstage/resources/teams/how_to_features.html")[denna guide] vilken kan användas som stöd. Några exempel av robotfunktioner är:
- Rörelseförmåga
- Objekt/människo-detektion och undvikande
- Elektromekanisk design
- Interaktion med människor/robotar/rekvisita
- Manipulation av saker
- Lokalisering och kartläggning

= Originalitet och Autenticitet
Lag som, enligt domarna, har medvetet kopierat ett annats lag robotar,kostymer eller föreställningsmoment (undantag musik) skall ges disciplinära åtgärder. Detta gäller också tidigare OnStage tävlingar. Vid otydlighet skall laget kunna uppvisa tydlig dokumentation på deras förberedelse inför tävlingen och hur de kom på iden.

Lag skall informera domarna om robotkomponenter återanvänds från tidigare tävlingar. För att få poäng bör laget kunna visa att de har utvecklat och förbättrat dessa komponenter.

= Föreställningen (ca 60% av poängen)
OnStage-föreställningen är en möjlighet för laget att demonstrera sin design, konstruktion och de tekniska aspekterna kring sin robot eller sina robotar genom en föreställning eller uppvisning. Detta kan vara till exempel en magishow, teater, komedirutin, dans eller konstutställning. Lagen uppmuntras att vara kreativa, innovativa och att ta risker i sin användning av teknologier och material när de skapar sin föreställning.

Laget skall presentera en liveföreställning, vilket de kommer att bli bedömda på. Laget kommer att frågas vilka 4 funktioner som de särskilt vill uppvisa under sin föreställning, och poäng kommer att tilldelas lag utefter hur de implementerar dessa funktioner och hur dessa förhöjer föreställningen. Detaljer kring vad som ger poäng finns på OnStage Poängbladet.

== Scenuppträdandet
1. Varje lag skall få två tillfällen att framföra sin föreställning för domarna.
2. Föreställningens skall minst ha en tidsåtgång på 1:30 minuter.
3. Varje lag har totalt sju minuter av tid på scenen vid varje föreställning. Denna tid inkluderar uppställning av scenen, introduktion, föreställningsrutin, omstarter av föreställningsrutin på grund av faktorer inom lagets kontroll och tiden det tar att lämna scenen. Tiden skall stoppas av domaren då scenen är tom utan spår av föreställning.
4. Tiden för varje föreställning skall startas då laget blivit tillfrågade att inta scenen.
5. Om tiden överskrids på grund av faktorer utanför lagets kontroll, till exempel problem med att starta musiken, skall inget straff ges.
6. Lagen skall vänta vid sidan av scenen innan de släpps in för att genomföra sin föreställning. En scentekniker utsedd av tävlingsanordnaren skall starta musiken/multimedia presentationen om detta är något som laget använder.
7. #new_rule([Föreställningen kan komma att filmas samt livesändas för publik. Filmade föreställningar kan komma att användas för marknadsföring av RoboCup Junior. Lag som inte vill att deras föreställning filmas eller livesändas skall informera tävlingsarrangören om detta.])
8. Laget uppmuntras använda sig av tiden då de förbereder scenen till att presentera sin föreställning och robotfunktioner.
9. Laget skall vid start tydligt informera domarna att föreställning börjar med en nedräkning från 3 till 1.
10. Laget skall tydligt indikera när deras föreställning är slut (ex. Samtliga i laget kommer fram till scenen samt tackar och bugar för publiken).

== Omstarter
1. Laget kan starta om föreställnings rutinen om det är nödvändigt, efter godkännande från domarna. Inom lagets scentid får laget genomföra så många omstarter som de vill. Poängavdrag skall ges vid varje omstart, se poängbladet.
2. #new_rule([Laget kan starta om utan att lämna scenen genom en tydlig nedräkning.])
3. #new_rule([Poäng nollställs mellan varje omstart, med undantag av avdrag orsakat av omstarterna.])
4. Laget skall ha lämnat scenen då deras scentid tar slut.

== Musik och Multimedia
1. Laget får använda sig av musik eller video till sin föreställning. Laget ansvarar för att de efterlever samtliga copyright lagar.
2. Laget får använda sig av en multimedia presentation på sin föreställning. Detta kan vara till exempel en video, animation eller bildspel. Denna skall vara skapat av lagetsjälva.
3. Interaktion mellan roboten och multimedia presentationen är tillåtet och uppmuntrat.
4. I anslutning till scenen skall tävlingsanordnaren tillse att det finns antingen en projektor eller bildskärm.
5. En HDMI kabel och en 3.5mm AUX kabel skall finnas tillgänglig vid scenen som är ansluten till bildskärmen eller projektorn.
6. Om musik används skall laget tillse att ta med sig egen ljudkälla. Den föredragna sättet är en ljud eller videofil på ett USB-minne i mp3/mp4 format. USB-minnet skall vara tydligt uppmärkt med lagets namn och skall bara innehålla filer till föreställningen. USB-minnet skall vara inlämnad till scenteknikern innan föreställningens start och laget rekommenderas att ha med flera USB-minnen.

== Scenen
1. Scenen skall vara 5x4 meter och domarna skall sitta längs med en av långsidorna.
2. Kanten av scenen skall vara uppmärkt med en linje.
3. Underlaget till scenen skall vara platt, vitt och får ej vara blank. Skarvar i underlaget får som mest skilja sig 5mm sinsemellan, lagets robot skall kunna hantera detta.
4. Laget skall ges möjligheten att kalibrera sina robotar beroende på ljusförhållandena.
5. Laget skall ges möjligheten att kalibrera sina robotar beroende på de magnetiska förhållandena.

För detaljer kring årets scen, se Årets Scen på sida 2.

== Robotar
1. Robotarna måste agera autonomt.
2. Laptops, mobiltelefoner, Raspberry PI eller andra liknande enheter får användas som robotkontrollenheter.
3. Roboten skall vara av lagets egen konstruktion. Lagen uppmuntras att designa sin robots utstyrsel själva. #new_rule([Om laget använder en känd karaktär eller design skall laget respektera copyright lagar.])
4. Laget får tillhandahålla och använda sig av så många robotar som de själva vill. Robotar får vara av valfri storlek. Antalet eller storleken på robotarna ger inte nödvändigtvis mer poäng.

== Kommunikation och Navigering
1. Robotarna tillåts och uppmuntras att kommunicera sinsemellan under föreställningen. Tillåtna kommunikationsmedel är infrarött (IR), Bluetooth (LE och Classic), RFID, Zigbee och andra navigerings plattformar.
2. #highl([Ingen kommunikation får ske mellan enheter på och av scenen.])
3. Laget har ett ansvar att robotens kommunikationsfunktioner inte stör något annat lags robotar då de övar eller genomför sin föreställning.
4. #na
5. Laget skall vara förberedda på att hantera störningar på de olika kommunikationssätten, både före och under föreställningen.
6. Vid användning av navigeringsfyrar eller markeringar skall dessa vara placerade på scenen.

== Sceneri
1. Interaktiv rekvisita kan användas för att förhöja föreställningen.
2. Rekvisita ses som “interaktiv” om den:
  - interagerar med roboten via sensorer (#new_rule([monterade på roboten eller på rekvisitan]))
  - interagerar med roboten via kommunikation
3. Robotar får använda sig av statisk rekvisita för att utlösa vissa mönster eller beteenden så länge dessa är utplacerade på scenen.
4. #na

== Robotars Autonomi och Interaktion
1. Robotarna får startas manuellt genom kontakt från en människa, sensorinteraktion eller med en fjärrkontroll vid start av föreställningen.
2. Under föreställningen är styrning av roboten från människor förbjuden, detta inkluderar att klicka på knappar, styrning via mobilappar eller andra touch-lika sensorer. En touch-lik sensor anses vara en passiv sensor som har endast en logisk enkel funktion som beror på en människas agerande.
3. Människor som genom direkt påverkan av en robots sensor utlöser en robots nästa steg kommer ej att få höga poäng.
4. Intelligent interaktion mellan människor och robotar bör användas för att dynamiskt ändra robotens beteende. Robotar som kan interagera och reagera med sin omgivning kommer att få höga poäng. Naturlig interaktion mellan människor och robotar uppmuntras.
5. Interaktion mellan robotar uppmuntras. Robotar får vidröra varandra och kan interagera genom sensorer, trådad/trådlös kommunikation.
6. All interaktion med robotar skall vara synlig för domarna. Detta inkluderar den manuella starten av robotarna.
7. #na

== Människor på scenen
1. Mänskliga lagmedlemmar får delta ihop med sina robotar på scenen. Om de gör det är det dock viktigt att de ej döljer robotarnas egna funktioner och komponenter.
2. För att fokuset skall hållas på robotarna, skall människorna på scenen följa grundläggande skådespel riktlinjer (inte blockera synfält, inte vända ryggen mot publiken, osv) och uppträda professionellt på scenen.

== Poängavdrag
1. Se poängbladet för möjliga poängavdrag.
2. Ingen robotinteraktion eller rörelse som sker utanför scenen är poänggivande, det skall ej heller ge poängavdrag.
3. #na
4. #na

== Förberedelser inför föreställning
1. Det är laget ansvar att tillse att deras musik/multimedia presentation spelas upp på ett korrekt sätt under deras föreställning genom samverkan med scenteknikern.
2. Beroende på utformningen av scenen och ljudsystemet, så kan det uppkomma scener där lagmedlemmarna som startar robotarna och scenteknikern inte kan ha ögonkontakt. Lagen skall vara förberedda att hantera detta.

== Övning på Huvudscenen
1. Huvudscenen kommer att göras tillgänglig för lagen att kunna öva på innan sin föreställning. För att tillåta samtliga lag denna möjlighet skall det finnas ett sätt för lagen att boka korta övningspass eller ett schema förberett av arrangörerna.
2. Varje lag som övar på scenen har som ansvar att städa efter sig. Det lag som övar sist innan bedömningarna börjar ansvarar för att det är rent, detta skall vara färdigt minst 10 minuter innan start.

== Innehåll
1. Föreställningar får ej innehålla våldsamt, militärt, hotande eller brottsligt innehåll. Detta inkluderar olämpligt eller kränkande ord, bilder eller musik.
2. Deltagare skall försiktigt överväga sina ordval och de meddelanden som kommuniceras under sin föreställning. 
3. Ett lag vars föreställning anses vara olämplig eller kränka någon annan grupp skall åtgärda detta innan de får genomföra sin föreställning. Lag som vill klargöra teman eller innehåll i sin föreställning skall göra detta med domarna innan sitt uppträdande. Lag som har olämpligt eller kränkande innehåll i sin föreställning skall ges disciplinära åtgärder.

== Säkerhet
1. #na
2. Robotarna ska byggas så att de kan hanteras av laget själva. Laget ska kunna lyfta upp och ned sina robotar från scenen.
3. Flygande robotar/drönare skall befinna sig innanför ett skyddsnät då de flyger eller vara knutet till ett föremål som väger mer än vad roboten klarar att lyfta. Säkerhetsnätet eller repet ska vara tillverkat av ett material som inte skadas av roboten och förhindrar roboten från att lämna scenen under föreställningen. Fritt flygande drönare är inte tillåtna i tävlingshallen. #highl([Lag som vill använda sig av flygande drönare ska ha fått tillstånd av tävlingens huvuddomare innan tävlingens start.])
4. Föreställningar får ej innehålla projektiler, explosioner, rök, eld, vatten eller andra farliga ämnen. Kontakta tävlingsarrangören om ni är osäkra på om något ni vill använda är tillåtet.
5. Ett lag vars rutin innehåller någon situation som kan uppfattas som farlig, inklusive möjligheten att skada scenen, skall skicka in en rapport om detta minsta 2 veckor innan tävlingens start till tävlingsanordnaren. Lag som inte följer detta skall ej tillåtas att genomföra sin föreställning.

= Teknisk Intervju (ca 40% av poängen)
Den tekniska intervjun är en intervju mellan laget och domarna, där samtliga robotar och tillhörande programmering utvärderas utefter de tekniska kriterierna. Kreativa och tekniskt innovativa funktioner som lagen genomfört erhåller höga poäng. Domarna är intresserade av lagmedlemmarnas förståelse av den teknologi som de använt. Lagen skall uppvisa sin originalitet och autencitet under intervjun.

== Intervjuprocess
1. Laget har upp till 20 minuter på sig att genomföra sin tekniska intervju under tävlingen. Intervjun skall genomföras mellan laget och domarna i ett separat rum från scenen.
2. Intervjun skall genomföras av minst 2 st domare.
3. Intervjupoängbladet skall användas av domarna för att bedöma laget prestation.
4. Laget skall ha samtliga av sina fysiska robotsystem på plats under intervjun och kopior av sitt arbete i ett format som lätt kan kontrolleras. Detta kan inkludera källkod, CAD/CAM design, PCB design, kopplingsscheman med mera. Samtliga lagmedlemmar skall kunna svara på frågor kring deras tekniska inblandning i robotarnas design, programmering eller konstruktion.

== #na

== Översättare
1. Den tekniska intervjun kommer att genomföras på svenska. Vid godkännande från tävlingsarrangörerna kan intervjun istället genomföras på engelska, lagen måste ansöka om detta minst två veckor innan tävlingen och får svar minst en vecka innan tävlingen. Om laget behöver översättare skall de själva införskaffa detta.
2. Extra tid till intervju kommer ej att ges för lag med översättare.

== Extra Teknisk Intervju
1. Om domarna anser att det är nödvändigt, får de be lagen att genomföra en andra teknisk intervju.

= OnStage Teknisk Dokumentation
Detta är något som vi inte använder oss av i Sverige för att betygsätta lagen, vid mån av tid uppmuntras lagen dock att genomföra det ändå. Specifikationer finns i de internationella reglerna.

= Dömmande och Kommentarer
== Bedömningskriterier
1. Bedömningskriterierna och tilldelning av poäng markeras i respektive lags
poängblad.
2. #na

== Sammanläggning av poäng
1. Den totala poängen för varje lag ges av att kombinera poäng från lagets tekniska intervju och föreställning.
2. #new_rule([Om flera uppvisningar genomförs så kommer den högsta poängen att räknas.])

== Domarpanelen
1. Föreställningen skall bedömas av minst 3 stycken domare. Minst en av domarna skall ha deltagit på den tekniska intervjun.
2. #na

= #na
= #na

= Regelklarläggande
+ Vid oklarhet kring reglerna innan tävlingen skall tävlingsanordnaren kontaktas.
+ Tävlingens Huvuddomare har som ansvar att under tävlingens gång tillse att
  reglerna efterföljs och att granska överklaganden, i fall de lag missbrukar
  överklaganderätten skall först en varning ges som varefter detta kan leda till
  diskvalificering.
