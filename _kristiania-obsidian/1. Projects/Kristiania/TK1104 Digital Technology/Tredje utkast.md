## Det intergalaktiske nettverket

I dagens hyperteknologiske verden er nesten enhver ny enhet født "smart" nok til å enkelt koble til det globale nettverket. Dette er mulig fordi kjernen av den globale infrastrukturen vi kaller Internett er et sett med delte kommunikasjonsstandarder, prosedyrer og formater kalt protokoller. Men da de første fire-nodene til ARPANET ble fullt funksjonelle på begynnelsen av 1970-tallet, var ting litt mer kompliserte. Utveksling av data mellom forskjellige datamaskiner (for ikke å si forskjellige datanettverk) var ikke så enkelt som det er i dag. Til slutt kom et pakkesvitsjingsnettverk å koble seg til, men ikke noe universelt språk for å kommunisere gjennom det.

Forutsigbart ble det nye nettverket knapt brukt i begynnelsen. Årsaken var ganske enkel: Ikke mange ved forskningsfasilitetene visste om prosedyrene som trengs for å kunne 'snakke' med datamaskiner ved andre avdelinger.

For å finne en løsning på dette frustrerende problemet, etablerte Larry Roberts og hans personale en bestemt gruppe forskere for å utvikle vert-til-vert-programvaren. Gruppen ble opprinnelig kalt Network Working Group (NWG) og ble ledet av Steve Crocker. Senere, i 1972, skiftet gruppen navn til International Network Working Group (INWG) og ledelsen gikk fra Crocker til Vint Cerf.

NWG var en spesiell gruppe som ikke bare var opptatt av å overvåke og stille spørsmål ved nettverkets tekniske aspekter, men, mer generelt, med alle aspekter av det, også de moralske og filosofiske. Takket være Crockers fantasifulle lederskap, ble diskusjonen i gruppen tilrettelagt av en svært original og ganske demokratisk metode, fortsatt i bruk fem tiår senere. For å kommunisere med hele gruppen, var alt et medlem trengte å gjøre å sende en enkel [Request for Comment](http://www.faqs.org/rfcs/) (RFC). For å unngå å tråkke noen på tærne, var notatene å betrakte som «uoffisielle» og med «ingen status». Minimumslengden på en RFC var, og fortsatt er "[én setning](http://www.faqs.org/rfcs/rfc30.html)".

### Utvide nettverket

NWG trengte imidlertid nesten to år på å skrive programvaren, men til slutt, i 1970, hadde ARPANET sin første vert-til-vert-protokoll, Network Control Protocol (NCP). I desember 1970 hadde det opprinnelige fire-node-nettverket utvidet seg til 10 noder og 19 vertsdatamaskiner. Fire måneder senere hadde ARPANET vokst til 15 noder og 23 verter. For å få «verden til å legge merke til pakkebytte», bestemte Roberts og hans kollegaer seg for å gi en offentlig demonstrasjon av ARPANET og dets potensialer ved International Conference on Computer Communication (ICCC) som ble holdt i Washington, D.C., i oktober 1972.

Demonstrasjonen lyktes med å vise hvordan pakkesvitsjing fungerte for folk som ikke var involvert i det opprinnelige prosjektet. Det inspirerte andre til å følge eksemplet satt av Larry Roberts sitt nettverk. Internasjonale noder lokalisert i England og Norge ble lagt til i 1973; og i de følgende årene dukket det opp andre pakkesvitsjenettverk, uavhengig av ARPANET, over hele verden. Denne overgangen fra et relativt lite eksperimentelt nettverk til et som omfatter hele verden, stilte ARPANETs designere overfor en ny utfordring: hvordan få forskjellige nettverk, som brukte forskjellige teknologier og tilnærminger, til å kommunisere med hverandre?

Den eksisterende Network Control Protocol (NCP) oppfylte ikke kravene. Den hadde blitt designet for å administrere kommunikasjon vert-til-vert innenfor samme nettverk. For å bygge et ekte åpent, pålitelig og dynamisk nettverk av nettverk var det nødvendig med en ny generell protokoll. Det tok flere år, men til slutt, i 1978, lyktes Robert Kahn og Vint Cerf med å designe den. De kalte det Transfer Control Protocol/Internet Protocol (TCP/IP).

For å gi et eksempel: når en bruker sender eller henter informasjon over Internett – for eksempel tilgang til websider eller laster opp filer til en server – bryter TCP-en på avsenderens maskin opp meldingen i pakker og sender dem ut. IP-en er i stedet den delen av protokollen som handler om "adressering og videresending" av de individuelle pakkene. IP-en er en kritisk del av vår daglige internettopplevelse: uten den ville det være praktisk talt umulig å finne informasjonen vi leter etter blant de milliarder av maskiner som er koblet til nettverket i dag.

![[tcp-ip-protocol-sketch.jpg]]

> Bilde som forklarer TCP/IP protokollen.
> 
> TCP/IP. [https://estudie.no/tcp-ip/](https://estudie.no/tcp-ip/)

På mottakersiden hjelper TCP med å sette alle pakkene sammen til de originale meldingene, sjekke feil og rekkefølge. Takket være TCP/IP var utveksling av datapakker mellom forskjellige og fjerne nettverk endelig mulig

Cerf og Khans nye protokoll åpnet for nye mulige veier for samarbeid mellom ARPANET og alle de andre nettverkene rundt om i verden som hadde blitt inspirert av ARPAs arbeid. Grunnlaget for et globalt nettverk ble lagt, og dørene sto åpne for alle å være med.

![[arpanet-1969-to-1977.jpg]]
> Kart over nodene som ble lagt inn i ARPANET nettverket utover perioden 1969-1977
> 
> ARPANET 1969-1977. Wikipedia

ARPANET ble offisielt tatt ut av drift i 1990, mens NFTNET i 1995 ble lagt ned og Internett ble effektivt privatisert. Da var nettverket – ikke lenger den private enklaven av informatikere eller militære – blitt Internett, en ny kommunikasjonsgalakse klar til å bli fullt utforsket og befolket.

### Internettet

I de tidlige stadiene, mellom 60- og 70-tallet, var kommunikasjonsgalaksen som ble skapt av ARPANET, ikke bare stort sett ukjent rom, men, sammenlignet med dagens standarder, også veldig tom. Det fortsatte langt inn i 90-tallet, før teknologien som var pionert med ARPANET-prosjektet ble skjelettet for Internett.

I 1992, under sin første fase av popularisering, utvekslet de globale nettverkene koblet til Internett rundt 100 Gigabyte (GB) av trafikk per dag. Siden den gang har datatrafikken vokst eksponentielt sammen med antall brukere og nettverkets popularitet. Et tiår senere, takket være Tim Berners Lees [World Wide Web](http://webfoundation.org/about/vision/history-of-the-web/) (1989), er det en stadig økende tilgjengelighet av billige og kraftige verktøy for å navigere rundt galaksen, for ikke å snakke om eksplosjonen av sosiale medier fra 2005 og fremover. 'per dag' ble om til 'per sekund', og i 2014 nådde den globale Internett-trafikken en topp på 16 000 GBps, med eksperter som [prognoserte](http://cisco.com/c/en/us/solutions/collateral/service-provider/visual-networking-index-vni/VNI_Hyperconnectivity_WP.html) at tallet skulle firedobles før tiåret er ute.

Likevel kan tall noen ganger være villedende. Nesten fem tiår etter Kleinrock og Klines eksperiment i California, har Internett uten tvil blitt en drivkraft i de daglige rutinene til [mer enn tre milliarder mennesker](http://www.internetworldstats.com/stats.htm) over hele verden. For et økende antall brukere er [ett minutt av livet på Internett](http://www.intel.com/content/www/us/en/communications/internet-minute-infographic.html) å være en del av , samtidig, av en endeløs strøm av delte opplevelser som inkluderer blant annet å se over 165 000 timer med video, bli eksponert for 10 millioner annonser, spille nesten 32 000 timer med musikk og sende og motta over 200 millioner e-poster.

Livene til nesten halvparten av verdens befolkning blir i økende grad formet av denne ekspanderende kommunikasjonsgalaksen.

Vi bruker det globale nettverket nesten til alt. 'Jeg er på Internett', 'Sjekk Internett', 'Det er på Internett' og andre lignende setninger har blitt et teleskopord for et økende spekter av aktiviteter: fra å chatte med venner til å lete etter kjærlighet; fra å gå på shoppingtur til å studere for en universitetsgrad; listen er praktisk talt uendelig.

Flere tiår etter at reisen begynte, har vi ennå ikke nådd det fulle potensialet til "Intergalactic Network" som Licklider forestilte seg på begynnelsen av 1960-tallet. Men forholdet mellom mennesker og datamaskiner som vi opplever hver dag er uten tvil en av menneskehetens største bragder.

## Kilder

-   ### Bilder
    -   Tim Berners-Lee WWW, hentet 28.10.2021 ([https://cds.cern.ch/images/CERN-GE-9407011-31](https://cds.cern.ch/images/CERN-GE-9407011-31))

-   ### Sider
    -   SRI, hentet 28.10.2021 ([https://www.sri.com/hoi/arpanet/](https://www.sri.com/hoi/arpanet/))
    -   Internet FAQ Archives (RFC Archive), hentet 28.10.2021 ([http://www.faqs.org/rfcs/](http://www.faqs.org/rfcs/))
    -   WWW Foundation, "History of the web", hentet 29.10.2021 ([https://webfoundation.org/about/vision/history-of-the-web/](https://webfoundation.org/about/vision/history-of-the-web/))
    -   Internet World Stats (Usage and Population Statistics), hentet 29.10.2021 ([https://www.internetworldstats.com/stats.htm](https://www.internetworldstats.com/stats.htm))
    -   estudie, "Hva er TCP/IP?" hentet 29.10.2021 ([https://estudie.no/tcp-ip/](https://estudie.no/tcp-ip/))