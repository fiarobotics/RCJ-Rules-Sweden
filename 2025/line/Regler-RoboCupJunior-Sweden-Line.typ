#let local_change(x) = emph(x)
#let new_rule(x) = underline(x)
#let reformulation(x) = highlight(fill: gray, x)
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
  [#let local_change(x) = skew(ax: -12deg)[#x]

    #align(center, image("images/fia-logga.png", height: 6.0cm))],
  [
    #align(
      center,
      text(30pt)[
        Regler \
        RoboCupJunior Rescue Line 2025
      ],
    )
  ],
  [
    #align(center, image("images/rcj-cover.png"))
  ],
)

#set page(
  header: image("./images/fia-header.png", height: 80%), // TODO: FIX logga
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
Området är för farligt för att människor ska kunna hjälpa till. Ert lag
har givits uppgiften att rädda dagen! Er robot skall kunna utföra ett
räddningsuppdrag fullständigt autonomt utan utomstående hjälp. Roboten
måste vara tillräckligt hållbar och intelligent för att ta sig igenom den
farliga terrängen och rädda människorna. När roboten når ett offer skall den
försiktigt kunna transportera tillbaka denne till en evakueringsplats. Roboten
skall efter detta kunna återgå till olycksplatsen för att kunna fortsätta
räddningsuppdraget. Tiden är livsviktig!

Lycka till.

#image("images/ex-bana.png")


= Sammanfattning
En autonom robot skall följa en svart linje och navigera hinder som dyker
upp längs vägen, detta görs på en modulär bana uppbyggd av brickor med olika
mönster. Golvet är vitt och nivåskillnader mellan brickor knyts ihop med ramper.


Det är inte tillåtet att innan starten ge roboten någon information om banan
den skall navigera.


Lagen får poäng på följande sätt:

10 poäng om den följer korrekt väg i en korsning eller återvändsgränd.\
20 poäng för att ta sig över en gungbräda.\
20 poäng för att ta sig förbi ett hinder.\
10 poäng för att hitta linjen igen efter en bricka med ett eller flera gap
i linjen.\
10 poäng #new_rule([för varje lyckad navigering av en ramp bricka.])\
10 poäng för att lyckas ta sig förbi ett farthinder.

Varje gång en robot tar sig till en kontrollpunkt får den poäng på följande sätt:

- Når kontrollpunkten på första försöket: 5 poäng per bricka mellan
  kontrollpunkterna.
- Når kontrollpunkten på andra försöket: 3 poäng per bricka mellan
  kontrollpunkterna.
- Når kontrollpunkten på tredje försöket: 1 poäng per bricka mellan
  kontrollpunkterna.
Om det tar mer än tre försök att nå nästa kontrollpunkt så utdelas 0 poäng.

Om en robot fastnar, kan den startas om på den senaste besökta kontrollpunkten.
Längs med banan så kommer det att finnas en evakueringsplats, som innehåller
en evakueringspunkt. Räddningsplatsen kommer att ha en ingång som är markerat
med en reflektiv silverfärgad tejp och en utgång som är markerat med en grön
tejp, dessa kommer att vara tejpade på brickan. Inom Räddningsplatsen så kan det
förekomma hinder, hinder i Räddningsplatsen ger inga poäng.

När roboten befinner sig på Räddningsplatsen skall den transportera offrena
till evakueringspunkten. Offrena representeras av kulor med mellan 4 och 5
cm i diameter. Offrena som är vid liv är reflektiva, silverfärgade och leder
elektricitet medans offrena som inte är vid liv är ej reflektiva, svarta och
leder ej elektricitet. Efter att roboten är färdig i Räddningsplatsen skall den
lämna och färdas till slutpunkten.

Lagen kan få en multiplikator till sitt slutpoäng beroende på antalet offer
evakuerade, svårighetsgraden och ordningen som man räddar offer i. Roboten ska
sedan lämna Räddningsplatsen och forsätta navigera banan.


#set heading(numbering: "1.")

= #new_rule([Generella Regler])
== Lagkrav
=== Lag Storlek

*Minsta storlek:* Ett lag måste bestå av minst 2 medlemmar.

*Största storlek:* #na

*Delade medlemmar och robotar:* Inga robotar får delas mellan lagen,#local_change(" man får dock tävla i flera lag").

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
+ Volontärerna, domarna och arrangörerna skall eftersträva att tävlingen är rättvis och rolig.
+ *Det viktiga är inte vilka som vinner, det viktiga är att man lär sig och har roligt.*

== Fair Play
+ Robotar som medvetet och/eller upprepat skadar andra robotar eller
  tävlingsområdet skall bli diskvalificerad från tävlingen.
+ Människor som medvetet och/eller upprepat skadar andra robotar eller
  tävlingsområdet skall bli diskvalificerad från tävlingen.
+ Det förväntas att samtliga lag eftersträvar att tävlingen sköts på ett
  rättvist sätt.

== Uppträdande
+ Varje lag ansvarar för att de har förstått reglerna och för att de vid behov
  av klargörande kontaktar tävlingsarrangörerna.
+ De tävlande ansvarar för att vara uppmärksam på andra personer och robotar
  när de rör sig runt på tävlingsområdet.
+ Lag får ej ta sig in andra lags arbetsområden utan att först fått tillstånd från det
  andra laget.
+ Lagen är ansvariga för att de håller sig informerade om de olika tiderna som
  finns på tävlingen och att de håller sig till dessa.
+ De tävlande och deras sällskap kan bli uppmanade att lämna tävlingsområdet om de
  stör, och kan bli diskvalificerade om störningen är grov nog.
+ Domare och tävlingsanordnare ansvarar för att reglerna efterföljs och att de
  tillämpas lika gentemot samtliga tävlande, vid oenighet skall beslutet granskas
  av huvuddomaren vars beslut är slutgiltigt.
+ Lagen förväntas vara på plats i förväg på startdagen så att de kan
  delta på alla viktiga uppstartsevenemang så som registrering, intervjuer,
  kaptens/mentormöte med mera.

== Mentorer
+ Bara lagmedlemmar får befinna sig i lagens arbetsområden. Mentorer, lärare,
  familjemedlemmar, översättare med mera får ej befinna sig där.
+ Bara lagmedlemmar får ha varit involverade i byggandet, reparationer eller
  programmeringen av roboten både före och under tävlingen.
+ Vid första uppkomsten av utomstående påverkan på roboten eller en domares
  beslut så kommer en varning att ges. Om beteendet inte slutar kan laget bli
  diskvalificerat.
+ Robotarna skall vara ett projekt genomfört av lagmedlemmarna.

== Värderingar och Integritet
+ Fusk och #reformulation([olämpligt]) uppträdande tolereras inte. Två exempel på fusk är:
  - Mentorer som arbetar på de tävlandes mjukvara eller hårdvara under tävlingen.
  - Mer erfarna tävlande arbetar på annat lags robot. Det är dock tillåtet att
    ge andra lag råd.
+ Om det efter prisutdelningen upptäcks att fusk har uppkommit så kan priset dras
  tillbaka.
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
+ Banan skall vara uppbyggd av modulära brickor.
+ De modulära brickorna skall vara 30x30 cm. Brickornas placering, antal och typ
  skall göras tillgänglig på tävlingsdagen, och inte innan. #new_rule([Brickorna
  kan monteras på valfritt hårt underlag.])
+ Banorna kommer att bestå av minst 8 st brickor, utan att räkna start- och
  slutbrickan.
+ Linjerna på brickorna kan ha en stor variation, några exempel på olika typer
  finns vid @ex-brickor.

== Underlaget
+ Underlaget #reformulation([skall]) vara vitt till färg och kan vara både jämnt
  och ojämnt. Mellan brickorna får det vara upp till en glipa på 3 mm.
  Det får uppkomma små höjdskillnader mellan brickorna.
+ Ramperna som förekommer på banan skall ha en lutning under 25 grader.
+ På banan får det förekomma broundergångar. En bricka som utformar en bro skall
  ha ett stödben per hörn på brickan vilka skall placeras i varje hörn. Stödbenen
  skall vara 2,5x2,5 cm och det skall vara en bredd på 25 cm och en minsta höjd på
  25 cm vid broundergångar.

== Linjerna
+ Den svarta linjen skall vara mellan 1 och 2 cm bred och får bestå av eltejp,
  vara utskrivet på papper eller #reformulation([andra liknande material]). Den
  svarta linjen bildar en väg genom banan.
+ Vid förekomst av #reformulation([mellanrum]) i linjen som roboten ska
  ta sig över, så skall det finnas en 5 cm rak svart linje innan och efter
  mellanrummet. #reformulation([mellanrum]) i linjen får ej överstiga 20 cm
  i längd.
+ Upplägget av brickor och banor kan ändras mellan rundorna.
+ Det ska vara minst 10 cm mellan linjen och banans kanter, väggar, stödben och
  hinder som roboten inte ska ta sig igenom.
+ Linjen kommer att avslutas med en slutbricka som skall ha en vinkelrät röd
  tejpbit relativt linjen, den röda tejpen skall vara 2,5 cm tjock och sticka ut
  15 cm på vardera sida om linjen.

#figure(
  caption: [Några exempel på möjliga brickor],
  image("images/ex-brickor.png"),
)<ex-brickor>

== Kontrollpunkter
+ Kontrollpunkterna är brickor som roboten får bli manuellt placerade på om Lack
  of Progress har angivits, se @lop.
+ Kontrollpunkter får inte förekomma på brickor som man kan ta poäng på.
+ Startbrickan är en kontrollpunkt.
+ Kontrollpunkterna ska vara uppmarkerade på ett sådant sätt #reformulation([så
  att]) det är tydligt för deltagare och domare.
+ Kontrollpunkternas antal och position bestäms då banan byggs och lagkaptenen
  skall vara informerad om dessa innan start av roboten.

== Farthinder, spillror och hinder
+ #new_rule([Farthinder får ej vara större än en bricka samt]) får vara högst
  1 cm höga, de skall vara av samma färg som underlaget samt vara fastsatta
  i underlaget.
+ #new_rule([Farthinder får placeras vart som helst inom Räddningsplatsen.
    Farthinder i Räddningsplatsen ger inga poäng.])
+ Spillror får högst ha en höjd på 0,3 cm och får ej vara fastsatta i
  underlaget. Spillror kan exempelvis vara tandpetare eller träpluggar.
+ Hinder skall vara minst 15 cm höga och får vara fastsatta i underlaget. Hinder
  kan exempelvis vara tegelstenar, vikter eller andra tunga objekt.
+ Ett hinder får ej förekomma ovanpå mer än en linje eller bricka.
+ En robot får flytta på ett hinder eller spillror. Hinder eller spillror
  som har blivit flyttade på av roboten stannar tills dess att banan skall
  återställas, de får ej flyttas #reformulation([av domare eller tävlande]) även
  om det hindrar roboten från att komma vidare.
+ Hinder får ej placeras närmare än 25 cm från banans kanter eller #reformulation([ramper och gungbrädor]).
+ I Räddningsplatsen, får hinder placeras överallt så länge som de är minst 10
  cm från samtliga väggar. Dessa hinder ger ej poäng.

== Korsningar och Återvändsgränder
+ Korsningar får förekomma överallt förutom inom evakueringszonen.
+ Korsningsmarkeringar skall vara gröna fyrkanter med dimensionerna 2,5x2,5
  cm. Dessa indikerar vilket håll som roboten skall ta i korsningen. Se
  @ex-korsningar.
+ I korsningar där det inte finns någon korsningsmarkering skall roboten
  fortsätta rakt fram igenom korsningen.
+ En återvändsgränd skall vara markerade med två korsningsmarkeringar en på
  vardera sida av linjen.
+ Korsningar skall alltid vara vinkelräta och kan antingen ha 3 eller 4 grenar.
+ Korsningsmarkeringar skall förekomma i anslutning till korsningen. Nedan
  följer bilder på samtliga möjliga scenarion.
#figure(
  caption: [Korsningsmöjligheter],
  [#image("images/ex-korsning.png"), #image("images/ex-korsning2.png")],
)<ex-korsningar>


== Ramper
+ En ramp är en struktur byggda av brickor som en robot antingen behöver ta sig
  upp eller ner för.
+ En ramp får inte överstiga 25 graders lutning från underlaget.
+ En ramp får bestå av mer än en bricka.
+ #new_rule([Poäng ges för varje bricka som navigeras på rampen.])
+ Linjen på rampen kan ha mellanrum, farthinder, korsningar, bråte och hinder.
+ #new_rule([Rampen ska avslutas i båda riktningarna med en horisontell bricka.])

== Gungbrädor
+ En gungbräda är en bricka som kan gunga på en mittpunkt.
+ Gungbrädor får som mest ha en lutning på 20 grader från underlaget när den är
  i viloläge, detta gäller åt vardera håll på gungbrädan.
+ Gungbrädor får bara ha en rak linje på sig och det får inte förekomma några
  poängmöjligheter på den.

== Räddningsplatsen
+ Den svarta linjen skall sluta på ingången till Räddningsplatsen.
+ Den svarta linjen skall börja igen vid utgången från Räddningsplatsen.
+ Räddningsplatsen skall ha dimensionerna 120 x 90 cm och ha vita väggar på alla
  4 sidor vilka skall ha en höjd på minst 10 cm.
+ Ingången till Räddningsplatsen skall vara markerad med en silverfärgad
  och reflektiv tejp, tejpen skall vara 2,5 cm djup och gå över hela ingången.
  Ingången skall vara 25 cm bred.
+ Utgången till Räddningsplatsen skall vara markerad med en svart tejp, tejpen
  skall vara 2,5 cm djup och gå över hela utgången. Utgången skall vara 25 cm
  bred.
+ Det får förekomma hinder inom Räddningsplatsen, dessa hinder skall vara minst
  10 cm från samtliga väggar.
+ Evakueringspunkterna är rätvinkliga trianglar med sidorna 30x30 cm.
  - En av evakueringpunkterna skall vara röd och där skall döda offer placeras
    av roboten.
  - Den andra evakueringspunkten skall vara grön och där skall de levande offrena
    placeras av roboten.
+ Evakueringspunkterna är röda och gröna trianglar med en vägg på 6cm:s höjd och
  tom mitt.
+ Domaren får innan start placera ut evakueringspunkterna i Räddningsplatsens
  hörn, #new_rule([dessa hörn får ej vara där en ingång eller utgång
  förekommer.])
+ Vid Lack of Progress, får domaren på nytt placera ut evakueringspunkterna.
+ Evakueringspunkterna skall vara fastsatta i underlaget, det får uppkomma små
  rörelser.

== Offer
+ Offer får förekomma var som helst inom Räddningsplatsen.
+ Offer representeras av en kula på en diameter mellan 4-5 cm med
  #reformulation([en tyngdpunkt i botten av kulan]) och får max väga 80 g.
+ Det finns två typer av offer:
  - Döda offer är svarta och leder ej elektricitet.
  - Levande offer är silvriga, reflektiva och leder elektricitet.
+ Offrena skall placeras ut slumpmässigt inom evakueringsplatser. Det skall
  finnas två levande och ett dött offer inom Räddningsplatsen.

== Banomgivningen
+ Lagen skall vara förberedda på att anpassa sina robotar till de förhållandena
  som finns på tävlingen.
+ Ljus och magnetiska förhållande får variera på banan.
+ På banan kan det uppkomma störningar från magnetism i form av till exempel
  ledningar under golvet.
+ På banan kan det uppkomma störningar från ljus i form av till exempel
  kamerablixtar.
+ Alla värden i regelboken har en tolerans på $plus.minus$10%


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
  styra roboten eller skickar information till roboten från externa sensorer är
  strikt förbjudet.
+ Roboten skall startas manuellt av lagkaptenen.
+ Roboten får inte använda information om den specifika banan för att navigera.
+ Roboten får inte skada banan.

== Konstruktion
+ Alla robotkit eller byggblock, antingen tillgängliga på marknaden eller byggda
  från grunden, är tillåtna så länge som designen och konstruktionen av roboten är
  primärt genomförda av lagmedlemmarna.
+ Lagen får ej använda kommersiellt byggda robot kit eller sensorer som är
  specifikt till för att genomföra någon uppgift för RoboCupJunior. Robotar som
  använder sig av dessa skall bli direkt diskvalificerade. Vid oklarheter bör
  laget kontakta tävlingsorganisatören innan tävlingen.
+ Enbart laser klass 1 och 2 är tillåtna att användas, detta skall kontrolleras
  under inspektionen av roboten. Lag som använder sig av laser skall innan
  tävlingen skickat in databladet för lasern och skall under tävlingen på
  förfrågan kunna uppvisa databladet.
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
  domaren om deras Lack of Progress procedur innan start av ett poänglopp och bara
  den visade proceduren är tillåten.
+ #new_rule([Drönare och svävare är förbjudna.])

== Laget
+ Varje lag får bara ha en robot på banan.
+ Lagen skall följa de allmänna reglerna gällande antalet och åldern av
  lagmedlemmarna.
+ Varje lagmedlem skall kunna förklara sitt arbete och ha en specifik teknisk
  roll inom laget.
+ Varje medlem inom lagen får bara vara registrerade till ett lag.
+ Ett lag får bara tävla inom en gren.
+ –
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
+ —
+ —
+ —
+ —
+ —
+ —
+ —

== Överträdelser
+ En robot får ej tävla innan den har blivit inspekterad och godkänd, om något
  upptäcks under inspektionen som behöver åtgärdas skall inspektionen genomföras
  tills dess att överträdelsen är åtgärdad och roboten blivit godkänd.
+ Lagets modifikationer får ej fördröja deras utsatta start tid.
+ Om ett lag ej har en tillåten robot vid deras starttid skall de
  diskvalificeras från den specifika starten.
+ Ingen hjälp från mentorer är tillåten under tävlingen.
+ Alla regelbrott kan leda till diskvalificering från tävlingen,
  #reformulation([diskvalificering från]) en omgång eller poängavdrag dessa
  beslutas av #new_rule([huvuddomaren]).


= Omgångar
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

== Omgångar
+ Varje lag har som mest 8 minuter per omgång på sig. Detta inkluderar både
  kalibrering och poängloppet.
+ Kalibrering innebär att kontrollera sensoravläsningar för att sedan kunna
  modifiera robotens programmering, kalibrering räknas inte som kartläggning.
+ Ett poänglopp räknas som den tiden då roboten rör sig autonomt på banan och då
  domaren räknar poäng.
+ Omgången skall starta på utsatt tid, vare sig om laget är på plats eller redo.
  Starttiderna skall på ett tydligt sätt varit kommunicerat till lagen.
+ När en omgång har startat får roboten ej lämna tävlingsområdet.
+ Roboten får kalibreras på så många ställen som laget vill, klockan skall ej
  pausas när detta genomförs. Under kalibrering så får roboten inte av sig själv
  röra på sig.
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
+ Vid start av ett poänglopp skall roboten befinna sig i direkt anslutning till
  skarven mellan startbrickan och den nästkommande brickan i linje med linjen.
+ All modifikation av roboten efter att ett poänglopp har startat är förbjuden.
+ Alla delar som roboten lämnar efter sig under ett poänglopp, vare sig
  avsiktligt eller oavsiktligt, skall lämnas på banan tills dess att omgången är
  slut. Varken lagmedlemmar eller domaren får flytta eller ta bort delar på banan
  under ett poänglopp (med undantag för regel 4.3.11).
+ Laget får ej ge deras robot någon information om fältet. En robot skall av sig
  själv känna igen och navigera banan.
+ En robot måste ha följt hela linjen fram tills Räddningsplatsen för att få
  träda in i Räddningsplatsen, och sedan lämna för att ta sig till slut brickan.
+ En robot anses ha besökt en bricka när mer än hälften av roboten har passerat
  brickans kant.

== Lack of Progress<lop>
+ En Lack of Progress sker då:
  - En lagkapten meddelar Lack of Progress till en domare.
  - En robot tappar linjen och hittar den inte igen innan den besökt nästa
    bricka (se figur nedan).
  - En robot når en linje som inte är inom den planerade rutten.
+ När Lack of Progress sker skall roboten placeras på den senaste besökta
  kontrollpunkten, och får startas efter placeringskontroll av domaren.
+ Roboten startas av domaren efter genomförd kontroll med knapp eller
  strömbrytare (se regel 3.2.8).
+ Det finns inte ett tak på antalet Lack of Progress som en robot kan få under
  en omgång.
+ Efter tre misslyckade försök (Lack of Progress) att nå nästa kontrollpunkt så
  får roboten starta på den kontrollpunkten.
+ Det är inget krav att roboten startar på nästa kontrollpunkt efter tre stycken
  Lack of Progress.
+ Om Lack of Progress sker då roboten befinner sig inom Räddningsplatsen skall
  samtliga offer stanna där de befinner sig, eventuella offer som roboten bär på
  skall placeras där roboten befinner sig. Om Lack of Progress sker då roboten
  lämnar Räddningsplatsen samt bär på offer skall de placeras på ett slumpmässigt
  sätt inom Räddningsplatsen.
+ Vid Lack of Progress skall samtliga gungbrädor återställas så att roboten kan
  navigera dessa.

== Poäng
+ Poäng från föregående bricka fås av roboten då den besöker nästa bricka, poäng
  fås av att navigera följande, dessa kallas linjeföljning poäng:
  - Mellanrum: 10 poäng
  - Farthinder: 10 poäng
  - Korsning/Återvändsgränd: 10 poäng
  - Ramp (per bricka): 10 poäng
  - Hinder: 20 poäng
  - Gungbräda: 20 poäng
+ Ett misslyckat försök att navigera ett hinder räknas som Lack of Progress.
+ När en robot besöker nästa kontrollpunkt eller stannar på slut brickan får den
  poäng per besökt bricka och antalet försök enlig följande:
- 1:a försöket: 5 poäng per bricka
- 2:a försöket: 3 poäng per bricka
- 3:e försöket: 1 poäng per bricka
- 4:a eller mer försök: 0 poäng per bricka
+ Varje mellanrum, farthinder, korsning, återvändsgränd, ramp, hinder och
  gungbräda ger endast poäng vid ett tillfälle under omgången.
+ Hinder inom Räddningsplatsen ger ej poäng.
+ Successful Victim Rescue (SVR): Roboten ges en multiplikator för varje lyckad
  räddning av ett offer kallat SVR. En SVR räknas då ett offer är flyttad till sin
  rätta evakuerings punkt, har stannat och ingen del av roboten rör vid offret. Då
  en domare bestämt att en SVR har skett plockar denne bort offret. Multiplikatorn
  fås enligt följande:
  - (SLVR) = x1,4 per SVR av levande offer.
  - (SDVR) = x1,4 per SVR av döda offer efter att samtliga levande offer blivit evakuerade.
+ Offret räknas bara som en lyckad SVR då den placerats inom sin korrekta
  Evakuerings Punkt.
+ Om Lack of Progress sker då roboten befinner sig mellan två kontrollpunkter
  eller mellan en kontrollpunkt och slut brickan som som det finns en
  evakueringsplats emellan skall ett avdrag ske på samtliga multiplikatorer enligt
  följande:
  - (EZLP) = -0,050x per antalet Lack of Progress inom Räddningsplatsen.
+ En multiplikator som fåtts för en SVR kan aldrig bli mindre än 1,25.
+ En slutbonus fås om man når slut brickan och stannar och står stilla i minst
  5 sekunder, om omgångens slut hinner ske innan roboten ha stått stilla i 5
  sekunder ges ingen poäng. Slutbonusen är en icke negativ siffra som fås av
  följande:
  - (Slut bonus) = 60 - 5x(Antalet Lack of Progress under omgången)
+ Banpoängen fås av följande:
  - (Ban poäng) = (Linjeföljning poäng + Slut bonus) x (Evakueringsplats multiplikator)

== Omgångens slut
+ En lagkapten kan närsomhelst under omgången bestämma sig för att avsluta
  omgången, detta görs genom att lagkaptenen på ett tydligt sätt kommunicerar
  detta till en domare. Tiden skall då stoppas av domaren vilket blir
  omgångstiden.
+ Omgången slutar då:
  - Lagets omgångstid på 8 minuter har förflutit.
  - Lagkaptenen har avslutat omgången.
  - Roboten har nått slut brickan och stått stilla i 5 sekunder.


= RobocupJunior Sverige
== Rundor & Poäng
+ #na
+ #na
+ #na
+ #na
+ #na
+ #na
+ #na
+ I fall där 2 eller flera lag har samma slut poäng skall detta avgöras genom
  att jämföra omgångstiderna om dessa inte avgör det skall vinnande lag slumpas
  fram.

== #na
== #na

= Open Technical Evaluation
Detta är något som inte genomförs i Sverige.


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

