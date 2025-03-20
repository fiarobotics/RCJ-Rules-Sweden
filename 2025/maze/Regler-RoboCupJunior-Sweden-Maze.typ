#let local_change(x) = emph(x)
#let new_rule(x) = underline([#x])
#let reformulation(x) = highlight(fill: gray, [#x])
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

#grid(
  columns: 1fr, rows: (3fr, 6fr, 5fr),
  [
    #align(center, image("images/fia-logga.png", height: 6.0cm))],
  [
    #align(
      center,
      text(30pt)[
        Regler \
        RoboCup Junior Rescue Maze 2025
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
#local_change([Regler markerade så här är annorlunda från de internationella reglerna.])

#new_rule([Regler markerade så här är ändrade från tidigare år.])

#reformulation([Regler markerade så här är omformulerade från tidigare år.])

Regler markerade med #rule_removed är bortplockade från föregående år.

Dessa regler avviker delvis från de internationella reglerna, de regler som inte
tillämpas är bortplockade och ersatta med "#na". Detta är för att denna regelbok
ska behålla samma numrering av reglerna som de internationella reglerna.


#outline()


= Scenario 
Landskapet är för farligt för människor att nå offren. Ditt lag har fått en
svår uppgift. Roboten måste kunna genomföra ett räddningsuppdrag fullständigt
autonomt utan mänsklig assistans. Roboten måste vara tålig och intelligent
nog att navigera i farlig terräng med kullar, ojämn mark och rasmassor utan
att fastna. Roboten måste söka efter offer, dela ut räddningskit och signalera
offrens position så att människor kan ta över. Tid och tekniska färdigheter är
avgörande! Kom förberedd för att vara det mest framgångsrika räddningsteamet.

Lycka till.

#figure(
  image("images/ex-bana.png")
)

= Sammanfattning
Roboten behöver söka igenom en labyrint efter offer. #new_rule([Labyrinten
kan ha ett "Farligt Område". Detta område kommer att vara svårare än resten
av banan.]) Roboten ska inte hitta den snabbaste vägen genom labyrinten;
istället bör den utforska så mycket av labyrinten som möjligt. Roboten kommer
att tilldelas 10, 15 eller 30 poäng för varje färg eller bokstavs offer
som upptäcks, beroende på dess plats på fältet. Varje framgångsrikt lämnat
räddningskit av roboten ger den 10 poäng per räddningskit. Antalet extra poäng
som roboten får beror på typen av offer.
- 20 poäng för skadade bokstavs offer
- 10 poäng för stabila bokstavs offer
- Inga ytterligare poäng för ett oskadat bokstavs offer
- 20 poäng för ett rött färgat offer
- 10 poäng för ett gult färgat offer
- Inga ytterligare poäng för ett grönt färgat offer

Om roboten fastnar i labyrinten kan den startas om vid den senast besökta
kontrollpunkten. En silvrig bricka indikerar kontrollpunkter, så roboten kan
spara positionen på en intern karta (om den använder en intern karta) och
återställa den interna kartan vid en Lack of Progress. Roboten måste också
undvika områden med svarta brickor.

Om roboten kan hitta tillbaka till början av labyrinten efter att ha utforskat
hela labyrinten kommer den att få en slut bonus. Roboten kommer också att tjäna
en bonus om den kan lämna labyrinten med ett minimalt antal omstarter. Anta att
roboten kan hitta tillbaka till början efter att ha utforskat labyrinten. Om
roboten har lyckats hitta tillbaka till start brickan efter att ha utforskat
labyrinten så kommer den att få tio bonuspoäng per identifierat offer som en
slut bonus.

Roboten kan tjäna ytterligare poäng genom att navigera följande hinder:
- 10 poäng för att ta sig upp eller nedför en ramp
- 10 poäng för varje besökt kontrollpunkt
- 5 poäng för att passera förbi varje bricka med fartgupp
- #new_rule(10) poäng för att navigera förbi en uppsättning trappor

#set heading(numbering: "1.")

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

*Tekniska roller:* Alla lagmedlemmar ska ha en teknisk roll (mekanik, design, elektronik, mjukvara osv.) och ska kunna förklara sin roll till en domare. 

== Robotkrav
=== Robotens kommunikation
#na

== Säkerhetskrav
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

== #na // En duplicering av uppförandekod:en så sätter denna not-applicable

= Uppförandekod
== Anda
+ Alla deltagare på RoboCup Juniors tävlingar förväntas respektera
  målen och idealen som är utsatta av den Internationella RoboCup Juniors
  uppdragsbeskrivning.
+ Volontärerna, domarna och arrangörerna skall eftersträva att tävlingen är
  rättvis och rolig.
+ Det viktiga är inte vilka som vinner, det viktiga är att man lär sig och har
  roligt. 	

== Fair Play
+ Robotar som medvetet och/eller upprepat skadar andra robotar eller
  tävlingsområdet skall bli diskvalificerad från tävlingen och anmälas.
+ Människor som medvetet och/eller upprepat skadar andra robotar eller
  tävlingsområdet skall bli diskvalificerad från tävlingen och anmälas.
+ Det förväntas att samtliga lag eftersträvar att tävlingen sköts på ett
  rättvist sätt.

== Uppträdande
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

== Mentorer
+ Bara lagmedlemmar får befinna sig i lagens arbetsområden. Mentorer, lärare,
  familjemedlemmar, översättare med mera får ej befinna sig där.
+ Bara lagmedlemmar får ha varit involverade i byggandet, reparationer eller
  programmeringen av roboten både före och under tävlingen.
+ Vid första uppkomsten av utomstående påverkan på roboten eller en domares
  beslut så kommer en varning att ges. Om beteendet inte slutar kan laget bli
  diskvalificerat.
+ Robotar skall vara ett projekt genomfört av lagmedlemmarna.

== Värderingar och Integritet
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

== Delning
+ Målet med RoboCupJunior är att fostra en anda av innovation och lärande inom
  och mellan lagen.
+ —
+ De tävlande uppmuntras att ställa frågor med sina medtävlande för att utveckla
  en kultur av nyfikenhet och upptäckande.

= Banan
== Beskrivning
+ Banan kommer att bestå av ett horisontellt golv, en omkrets vägg, ramper och
  väggar inom fältet.
+ Alla brickor definieras som en 30 cm x 30 cm stor yta.
+ Alla väggar som används för att skapa labyrinten är minst 15 cm höga från
  golvet eller toppen av trappor, 30 cm i längd och är monterade på kanterna av
  brickorna.
+ Brickor kommer att användas som ramper. De kommer att ha en lutning med en
  maximal vinkel på 25 grader från horisonten och är alltid raka.
+ #new_rule([Rampen ska avslutas i båda riktningarna med en horisontell bricka.])

== Underlaget
+ Golv kan vara antingen släta eller texturerade (som linoleum eller matta) och
  kan ha avvikelser på upp till 3 mm i höjd mellan brickorna. Det kan finnas hål i
  golvet (upp till 5 mm i diameter) för att fästa väggar.
+ Färgade brickor:
  + Det kommer att finnas brickor i olika färger på labyrintens golv. Betydelsen
    av varje färg förklaras nedan.
  + Färgade brickor kommer att placeras slumpmässigt i början av varje poäng
    körning.
  + Arrangörerna ska fästa de färgade brickorna i golvet, men lagen bör vara
    förberedda på små rörelser av dessa brickor.
+ Svarta brickor #reformulation([på banan]) representerar hål, som roboten måste undvika.
+ Silverbrickor #reformulation([på banan]) representerar kontrollpunkter.
+ Blåa brickor:
  + Blåa brickor #reformulation([på banan]) representerar vatten eller annan svårnavigerad
    terräng.
  + Om en robot besöker en blå bricka måste den stanna i minst 5 sekunder innan
    den besöker en annan bricka.
+ Röda brickor på banan representerar ingången till ett farligt område.
+ Robotar måste utformas för att navigera under brickor som bildar broar över
  andra brickor. Brickor som placeras ovanpå andra brickor kommer att stödjas av
  väggar. Den minsta höjden (avståndet mellan golvet och taket) kommer att vara
  25 cm

== Sökväg
+ Brickor som leder till start brickan genom att följa den vänstra eller högra
  väggen kallas 'linjära brickor'. Brickorna som INTE leder till startbrickan
  genom att följa den vänstra eller högra väggen kallas 'flytande brickor'.
+ Svarta brickor kommer att påverka bestämningen av bricktyp (linjär eller
  flytande) eftersom de kan betraktas som en virtuell vägg.
#figure(
  image("images/ex-flyttande.png"),
)
+ Lagen måste vara beredda på att vägarna kan vara något mindre i dimension
  ($plus.minus$10% variation på brickstorleken) än en bricka på grund av
  placeringen av väggarna.
+ Vägarna för roboten är avsedda att vara i bredd av brickan och kan öppna upp
  till hallar som är mer expansiva än vägarna.
+ En bricka är start brickan, där en robot ska starta och avsluta poänglopp. Den
  kan placeras var som helst på fältet.
+ Väggar kan tas bort, läggas till eller ändras strax innan ett poänglopp börjar
  för att förhindra att lagen genomför kartläggningen av fältens layout i förväg.
  Arrangörerna ska göra sitt bästa för att inte ändra labyrintens längd eller
  svårighetsgrad när dessa ändringar genomförs.


== #new_rule([Fartgupp, hinder och trappor])
+ Fartguppen ska vara fastsatta i golvet och ha en maximal höjd på #new_rule(1) cm.
+ #new_rule([Fartgupp får inte förekomma på ramper och trappor.])
+ Hinder:
  + har en minimal höjd på 15 cm.
  + får bestå av vilket stort och tungt föremål som helst.
  + får vara fastsatt i golvet.
  + får vara av vilken form som helst.
+ #reformulation([Hinder ska placeras]):
  + minst 20 cm från någon vägg ELLER
  + vidröra någon vägg och minst 20 cm från den motsatta kanten på brickan och
    andra hinder.
+ Hindren som flyttas eller välter ska förbli där de flyttas eller faller och
  får inte återställas under poäng loppet.
+ Bredden på trapporna ska vara densamma som vägen. Den maximala höjden är 2 cm.
  Längden på överdelen av trapporna ska vara minst 15 cm.
+ Stigningen på trapporna (det vill säga vinkeln på en platta i förhållande
  till horisonten när den placeras på trapporna) ska vara lika med eller mindre än
  25 grader.
+ #new_rule([Trappor får användas istället för ramp för att tillåta våningsbyte.])
+ Trappor #reformulation([ska]) placeras mellan väggar.

#figure(
  image("images/ex-trappa.png", width: 70%),
)

== #new_rule([Farligt område])
+ Det farliga området förväntas vara svårare än resten av banan.
+ Det farliga områdets ingång skall vara markerad med en röd bricka, området
  skall också vara helt omgiven av väggar (förutom vid ingången).
+ Det farliga området får inte blockera möjligheten att genomföra resten av banan.
+ Farthinder får placeras på ramper inom det farliga området.
+ Spillror får placeras inom det farliga området, detta ska inte vara fastsatt i
  golvet och ha en maximal höjd på 1 cm.
+ Inom det farliga området får trappor ha en stigning upp till 30 grader.
+ Fartgupp inom det farliga området får ha en maximal höjd på 2 cm.
+ Startbrickan får ej vara inom det farliga området.

#figure(
  image("images/ex-danger.png", width: 80%)
)
 
== Offer
+ Det finns två typer av offer: bokstavs- och färg-offer.
+ Offren skall vara placerad nära golvet på fältet (ungefär 7 cm ovanför golvet,
  se figur @offer1).
#figure(
  image("images/ex-offer1.png", width: 80%), caption: [Placeringen av offer]
)<offer1>

+ Offer får ej placeras på väggar som är vända mot
  svarta/#reformulation([/silveriga/blåa])#new_rule([/röda]) brickor, brickor
  med hinder/fartgupp/trappor, eller ramper.
+ Det #reformulation([får]) finnas objekt som liknar offer till utseendet men
  inte är offer. Detta inkluderar men är inte begränsat till bokstäver, symboler
  eller färger som inte beskrivs i detta avsnitt. Sådana objekt ska inte
  identifieras som offer av robotar.
+ Bokstavs-offer är versaler som är tryckta på eller fästa på väggen. De är
  tryckta i svart, med en sans serif-typsnitt som 'Arial'. De kan roteras, och
  deras höjd #reformulation([ska]) vara 4 cm. Bokstäverna representerar offrets
  hälsostatus.
  + Skadat offer: H
  + Stabilt offer: S
  + Oskadat offer: U
#figure(
  image("images/ex-offer2.png", width: 60%)
)
+ Färgade offer är tryckta på eller fästa på en vägg. Deras storlek ska vara 16
  $"cm"^2$ med högst 6 cm i någon riktning. 
  + Skadat offer: Röd
  + Stabilt offer: Gul
  + Oskadat offer: Grönt

== Räddningskit
+ Ett räddningskit representerar #reformulation([ett förstahjälpen-kit])
  som distribueras till ett offer som fångats i en naturkatastrof. Den
  symboliserar verktyg, medicinska förnödenheter eller enheter som används i
  räddningsprocessen, såsom GPS-sändare eller till och med något så enkelt som
  en ljuskälla.
+ Eftersom vi behöver säkerställa att räddningskit når offret måste den stanna
  nära offret efter utplaceringen. Till exempel kan den inte rulla iväg från
  eller studsa bort från offret.
+ Varje räddningskit måste ha en minimal storlek på 1 cm i varje dimension och
  ha en minimal volym på 1 $"cm"^3$ efter utplaceringen.
+ En robot #reformulation([får som mest bära på 12 räddningskit]).
+ Varje lag ansvarar för sitt #reformulation([räddningskits-system]), inklusive
  att ta med räddningskiten till tävlingen. Lagkaptenen ansvarar för att lasta
  räddningskiten på sin robot och hämta dem från fältet med domarens tillstånd
  efter poängloppets slut.
+ Utplaceringen av räddningsutrustningen måste vara tydligt för domaren.

== Banomgivningen
+ Lagen skall vara förberedda på att anpassa sina robotar till de förhållandena
  som finns på tävlingen.
+ Ljus och magnetiska förhållande får variera på banan.
+ På banan kan det uppkomma störningar från magnetism i form av till exempel
  ledningar under golvet.
+ På banan kan det uppkomma störningar från ljus i form av till exempel
  kamerablixtar.
+ Alla värden i regelboken har en tolerans på $plus.minus$10%
+ Objekt som upptäcks av roboten #reformulation([ska]) vara särskiljbara från
  omgivningen genom sin färg eller form.


= Roboten
== #new_rule([Begrepp och definitioner])
+ *Verktyg:* Begreppet "verktyg" är omfattande och innefattar både hårdvaru-
  och mjukvarukomponenter som är nödvändiga för funktionen av roboten. Verktyg
  innefattar allt från sensorer till algoritmer.
+ *Kalibrering:* Processen då ett lag ingriper för att justera inställningarna
  på ett verktyg.
+ *Utveckling:* Aktiviteter som är ämnade att skapa nya lösningar, teknologier
  eller system; samt utöka förmågan på existerande lösningar, teknologier eller
  system. Kalibrering anses inte vara Utveckling.
+ Verktyg är tillåtna så länge de är utvecklade av laget eller när de inte
  kan slutföra en uppgift, eller en del av en uppgift, som gör det möjligt för
  roboten att tjäna poäng utan vidare utveckling (t.ex. färgsensorer, kameror
  eller bibliotek som är nödvändiga för sensorersfunktion).
+ Verktyg som inte är utvecklade av laget och som kan slutföra en uppgift, eller
  en del av en uppgift som gör det möjligt för roboten att tjäna poäng utan
  vidare utveckling (t.ex. linjeföljningssensorer, AI-kameror, OCR-bibliotek)
  är förbjudna.

== Kontroll
+ Robotarna skall autonomt navigera genom banan. Att på något sätt manuellt
  styra roboten eller skicka information till roboten från externa sensorer är
  strikt förbjudet.
+ Roboten skall startas manuellt av lagkaptenen.
+ Roboten får inte använda information om den specifika banan för att navigera.
+ Roboten får inte skada banan.

== Konstruktion<led>
+ Robotens höjd får inte överstiga 25 cm.
+ Robotar får inte ha sensorer eller annat som gör att de kan "se" över
  väggarna.
+ Alla robotkit eller delar, antingen tillgängliga på marknaden eller byggda
  från rå hårdvara, får användas så länge som robotens design och konstruktion
  primärt och väsentligt är de tävlandes eget arbete.
+ #new_rule([Drönare och svävare är förbjudna.])
+ Lag får inte använda kommersiellt producerade robotkit eller sensorkomponenter
  som är specifikt utformade eller marknadsförda för att slutföra någon enskild
  huvuduppgift för RoboCupJunior Rescue. Robotar som bryter mot detta skall
  omedelbart diskvalificeras från turneringen. Om det råder något tvivel bör lag
  rådfråga tävlingsanordnaren innan tävlingen.
+ Endast laser av klass 1 och 2 är tillåtna för deltagarnas och åskådarnas
  säkerhet. Domarna ska kontrollera detta under inspektionen. Lag som använder
  laser måste ha databladet för lasern och kunna visa upp dem under tävlingen.
+ Trådlös kommunikation får bara användas inom roboten. Annan typ av
  kommunikation skall vara inaktiverad under tävlingen. I de fall där roboten har
  annan kommunikation måste laget kunna bevisa för domarna att de är inaktiverade.
  All form av trådlös kommunikation till externa enheter är ej tillåtet. Brott mot
  denna regel kan leda till omedelbar diskvalificering.
+ Det finns möjlighet att roboten skadas under tävlingen, roboten skall
  vara byggd så att den kan klara detta. Roboten får ej vara en aktiv fara för
  människor, banan eller andra robotar, genom till exempel oskyddade elektriska
  kretsar.
+ När batterier transporteras eller laddas skall detta ske på ett säkert sätt
  genom till exempel brandsäkra batteripåsar.
+ Roboten skall ha ett handtag som den kan plockas upp med vid utplacering på
  banan.
+ Roboten skall ha en uppenbar och lättåtkomlig strömbrytare eller knapp som
  skall kunna användas av domaren vid Lack of Progress. Lag skall informera
  domaren om deras Lack of Progress procedur innan start av en poäng körning och
  bara den visade proceduren är tillåten.
+ #new_rule([Roboten ska ha en specifik LED eller display som bara är till för
  att identifiera offer, denna måste vara tydligt synbar för domaren.])

== Laget
+ Varje lag får bara ha en robot på banan.
+ Lagen skall följa de allmänna reglerna gällande antalet och åldern av
  lagmedlemmarna.
+ Varje lagmedlem skall kunna förklara sitt arbete och ha en specifik teknisk
  roll inom laget.
+ Varje medlem inom lagen får bara vara registrerade till ett lag.
+ Ett lag får bara tävla inom en gren.
+ #na
+ Mentorer får inte vara med lagmedlemmarna under tävlingen. Lagmedlemmarna
  skall utan mentorers stöd kunna delta i tävlingen.
== Inspektion
+ En panel av domare skall innan starten av tävlingen granska robotarna för att
  kontrollera att reglerna efterföljs. Denna inspektion får också uppkomma efter
  tävlingens start för att kunna granska till exempel ändringar.
+ Det är lagets ansvar att deras robotar inspekteras om de har genomfört
  modifieringar på roboten under tävlingens gång.
+ Lagmedlemmarna skall kunna förklara deras robot funktion för att kunna uppvisa
  att det är deras egna arbete.
+ Lagmedlemmarna skall kunna förklara vad de har arbetat på inför tävlingen.
+ #na
+ #na
+ #na
+ #na
+ #na

== Överträdelser
+ En robot får ej tävla innan den har blivit inspekterad och godkänd, om något
  upptäcks under inspektionen som behöver åtgärdas skall inspektionen genomföras
  tills dess att överträdelsen är åtgärdad och roboten blivit godkänd.
+ Lagets modifikationer får ej fördröja deras utsatta start tid.
+ Om ett lag ej har en tillåten robot vid deras starttid skall de
  diskvalificeras från den specifika starten.
+ Ingen hjälp från mentorer är tillåten under tävlingen.
+ Alla regelbrott kan leda till diskvalificering från tävlingen, en omgång eller
  poängavdrag dessa beslutas av domaren.


=  Omgångar
== Innan och mellan omgångar
+ Vid möjlighet skall lagen tillåtas övningsbanor för att kunna genomföra
  kalibrering och testande under tävlingen.
+ Tävlingsanordnaren får bestämma om det tillåts att ske på tävlingsbanorna.
== Människor
+ Varje lag skall utse en lagkapten och vice-lagkapten. Dessa två är de enda
  lagmedlemmarna som får närvara inom tävlingsområdet runt banan, undantag får ges
  av domare. Bara lagkaptenen eller vice-lagkaptenen får interagera med roboten
  under en poängkörning.
+ Lagkaptenen och vice-lagkaptenen får bara flytta roboten under en poängkörning
  efter tillstånd av domaren.
+ Andra lagmedlemmar och åskådare skall befinna sig minst 150 cm från banan,
  undantag kan ges av domare.
+ Ingen får efter start och innan slutet på en omgång avsiktligt vidröra banan.
+ All form av kartläggning innan robotens start skall omedelbart diskvalificera
  laget. Kartläggning av lagen kan innebära till exempel att ge roboten
  information om banan i form av var hinder befinner sig.

== Omgångar<omg>
+ Varje lag har som mest 8 minuter per omgång på sig. Detta inkluderar både
  kalibrering och Poäng Körningen.
+ Kalibrering innebär att kontrollera sensoravläsningar för att sedan kunna
  modifiera robotens programmering, kalibrering räknas inte som kartläggning.
+ Ett Poänglopp räknas som den tiden då roboten rör sig autonomt på banan och då
  domaren räknar poäng.
+ Omgången skall starta på utsatt tid, vare sig om laget är på plats eller redo.
  Starttiderna skall på ett tydligt sätt varit kommunicerat till lagen.
+ När en omgång har startat får roboten ej lämna tävlingsområdet.
+ Roboten får kalibreras på så många ställen som laget vill, klockan skall ej
  pausas när detta genomförs. Under kalibrering så får roboten inte av sig själv
  röra på sig.
+ Innan ett poänglopp börjar ska domaren kasta en 6-sidig tärning eller en annan
  randomiseringsmetod som fastställts av arrangörerna för att bestämma platsen för
  de svarta, blåa#new_rule([, röda]) och silveriga brickorna. Domaren ska inte avslöja positionen för
  de svarta, blåa#new_rule([, röda]) och silveriga brickorna för laget förrän de är redo att börja
  ett poänglopp (se @omg\.11). Domarna kommer att säkerställa att kombinationen av
  svarta brickplaceringar i en banlayout är 'lösbart' innan en robot börjar ett
  poänglopp.
+ Före ett poänglopp så får domaren ändra på placeringen av väggarna.
+ När laget vill starta ett poänglopp så skall de informera domaren. Därefter
  skall roboten placeras ut på startbrickan utpekad av domaren. När ett poänglopp
  har startat så får roboten inte kalibreras längre, den källkod och parametrar
  som körs vid start av ett poänglopp skall användas resten av omgången.
+ Det är laget som väljer om de vill kalibrera eller ej, ett lag får starta ett
  poänglopp utan att ha kalibrerat.
+ Brickor, hinder och andra poängelement får av domaren plockas bort, läggas
  till eller ändras när roboten väl har startat sitt poänglopp; det kan göras
  för att förhindra laget från kartläggning av banan. Dessa förändringar skall
  göras på ett slumpmässigt sätt med en tärning eller på ett sätt som tävlings
  anordnaren informerat om innan tävlingsstart. För respektive bana skall det
  tillses att svårighetsgraden och maxpoängen förblir lika.

== Poänglopp
+ All modifikation av roboten efter att ett poänglopp har startat är förbjuden.
+ Alla delar som roboten lämnar efter sig under ett poänglopp, vare sig
  avsiktligt eller oavsiktligt, skall lämnas på banan tills dess att omgången är
  slut. Varken lagmedlemmar eller domaren får flytta eller ta bort delar på banan
  under ett poänglopp (med undantag för regel @omg\.11).
+ Laget får ej ge deras robot någon information om fältet. En robot skall av sig
  själv känna igen och navigera banan.
+ En robot anses ha besökt en bricka när mer än hälften av roboten har passerat
  brickans kant, sett ovanifrån.

== Lack of Progress
+ En Lack of Progress sker då:
  + En lagkapten meddelar Lack of Progress till en domare.
  + En robot besöker en svart bricka.
  + En robot besöker en annan bricka efter att ha besökt en blå bricka och inte
    stannat i minst 5 sekunder.
  + En robot skadar banan.
  + En lagmedlem rör banan eller roboten utan tillåtelse från en domare.
+ När Lack of Progress sker skall roboten placeras på den senaste besökta
  kontrollpunkten, (eller start brickan om den inte besökt någon kontrollpunkt).
  Roboten får placeras i vilken riktning som helst på kontrollpunkten.
+ Efter Lack of Progress, så får bara den procedur som visats för domaren innan
  poängloppets start användas.

== Poäng
+ För att identifiera ett offer ska roboten stanna inom 15 cm från ett offer
  och blinka #new_rule([indikatorn (se @led\.12)]) som är synlig för domaren
  i 5 sekunder samtidigt som den står stilla. #new_rule([Blinkningarna ska ha
  ett intervall på 500ms på 500ms av för att det ska räknas som en lyckad offer
  identifikation.])
+ Poäng ges för varje Successful Victim Identification (SVI) på banan.
  + För offer som är placerade på en linjär bricka.
    + För färg offer: 5 poäng
    + För bokstavs offer: 10 poäng
  + På flytande brickor.
    + För färg offer: 15 poäng
    + För bokstavs offer: 30 poäng
  #figure(
    image("images/ex-poang.png")
  )
+ En robot måste placera ut ett räddningskit inom 15 cm från offret för att
  det ska räknas som en lyckad placering. Placeringen bestäms av platsen som
  räddningskitet befinner sig på när roboten befinner sig mer än 15 cm från
  offret.
+ Inga poäng ska ges för att placera ett räddningskit till ett offer som inte
  först har identifierats framgångsrikt.
+ 10 poäng ges per lyckad placering av ett räddningskit. Roboten kan få följande
  mängd poäng för placering av räddningskit:
  + Bokstavs offer:
    + Skadad (H): två räddningskit per offer. (Maximala poäng för
      räddningskitplacering per offer: 20 poäng.)
    + Stabil (S): ett räddningskit per offer. (Maximala poäng för
      räddningskitplacering  per offer: 10 poäng.)
    + Oskadad (U): inga räddningskit per offer.
  + Färg offer:
    + Röd: två räddningskit per offer. (Maximala poäng för räddningskitplacering per
      offer: 20 poäng.)
    + Gul: ett räddningskit per offer. (Maximala poäng för räddningskitplacering per
      offer: 10 poäng.)
    + Grön: inga räddningskit per offer.
+ Pålitlighetsbonusen är ett icke-negativt tal och består av antalet lyckade
  offer identifieringar (SVI), lyckade placeringar av räddningskit (SRD) och ett
  avdrag för det totala antalet Lack of Progress (LoP) enligt följande:
  $
    ("RELIABILITY BONUS") = ("SVI") times 10 + ("SRD") times 10 - ("LoP") times 10
  $
+ Lyckad navigering av Fartgupp. För varje bricka med fartgupp som passerats får
  en robot 5 poäng.
+ Lyckad navigering av ramp (upp eller ner). En robot får 10 poäng för att
  framgångsrikt navigera upp eller ner för en ramp (en robot kan maximalt få 10
  poäng per ramp). Roboten har framgångsrikt navigerat en ramp när den rör sig
  från den nedre till den övre brickan (eller vice versa) och är helt inom den
  horisontella brickan utan att välta.
+ Lyckad navigering av trappor. En robot belönas med #new_rule(10) poäng för
  att navigera en uppsättning trappor i valfri riktning (en robot kan maximalt
  få #new_rule(10) poäng per uppsättning trappor). Lyckad navigering innebär
  att roboten rör sig från den nedre brickan på ena sidan av trapporna till den
  övre brickan och sedan till den nedre brickan på den andra sidan av trapporna
  utan hjälp.
+ Lyckad navigering av kontrollpunkter. En robot får 10 poäng för varje besökt
  kontrollpunkt.
+ Lyckad Exitbonus. En robot får 10 poäng för varje offer som framgångsrikt
  identifierats. 'Exitbonus'-villkoret uppfylls när roboten återvänder till
  startbrickan och stannar där i minst 10 sekunder för att avsluta poängloppet
  #new_rule([samt blinka med indikatorn (se @led\.12). Blinkningarna ska ha ett
  intervall på 1s på 1s av.])
+ En robot får inga dubbla belöningar. Till exempel, om en robot framgångsrikt
  passerar en bricka med fartgupp flera gånger, kommer endast en lyckad passage
  av fartguppet att belönas per bricka. Samma resultat gäller för alla andra
  poängregler.
+ Felidentifiering. Om en robot identifierar ett offer genom de metoder som
  beskrivs i 4.6.1 men är utanför 15 cm radie från något offer, ska 5 poäng dras
  av. Denna situation gäller inte för att leverera fel antal räddningskit till
  offer. Det totala antalet poäng ska aldrig understiga noll poäng.

== Omgångens slut
+ En lagkapten kan närsomhelst under omgången bestämma sig för att avsluta
  omgången, detta görs genom att lagkaptenen på ett tydligt sätt kommunicerar
  detta till en domare. Tiden skall då stoppas av domaren vilket blir
  omgångstiden.
+ Omgången slutar då:
+ Lagets omgångstid på 8 minuter har förflutit.
+ Lagkaptenen har avslutat omgången.
+ Roboten har genomfört proceduren för Exitbonus.

= RobocupJunior Sverige
== Rundor & Poäng
+ #na 
+ #na
+ #na
+ #na
+ #na
+ #na
+ #na
+ I fall där 2 eller flera lag har samma slutpoäng skall detta avgöras genom att
  jämföra omgångstiderna om detta inte avgör det skall vinnande lag slumpas fram.

= Open Technical Evaluation
Detta är något som inte genomförs i Sverige

= —
= Konflikthantering
== Huvuddomare, Bandomare och Assisterande Domare
+ Alla beslut under omgången fattas av Bandomaren och eventuella Assisterande
  Domare, dessa ansvarar för banan, människorna samt robotarna som ska tävla vid
  deras bana.
+ Under omgången, så är de beslut som Bandomaren och Assisterande Domare
  som gäller. Lagkaptenen har rätt att överklaga beslut av Bandomaren eller
  Assisterande Domaren till tävlingens Huvuddomare.
+ Efter omgången ska lagkaptenen skriva under ett poängkort, som Bandomaren
  fyllt i. Lagkaptenen har som mest 1 minut på sig att granska och sedan skriva
  under poängkortet. Genom att skriva under poängkortet godkänner laget de beslut
  som har skett och den slutgiltiga poängen.

== Regelklarläggande
+ Vid oklarhet kring reglerna innan tävlingen skall tävlingsanordnaren kontaktas.
+ Tävlingens Huvuddomare har som ansvar att under tävlingens gång tillse att
  reglerna efterföljs och att granska överklaganden, i fall de lag missbrukar
  överklaganderätten skall först en varning ges som varefter detta kan leda till
  diskvalificering.
