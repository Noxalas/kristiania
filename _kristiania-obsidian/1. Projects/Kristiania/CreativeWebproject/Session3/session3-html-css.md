#Scripting #HTML #CSS

Campus-økt 3 PRO105
=================

Hensikten med disse oppgavene er å øke forståelsen av HTML og CSS teoretisk og praktisk. Noen av oppgavene kan kreve utforskning utover det som blir presentert i slideseriene, gå da gjerne inn på [http://www.w3schools.com](http://www.w3schools.com).

**Merknad:** noen oppgaver er best å finne ut av ved å kode opp svaret. For eksempel spørsmålet om boksmodellen (engelsk: CSS box model) nedenfor kan man finne et teoretisk svar på, men du burde kode HTML for å bevise hvordan det faktisk fungerer.

HTML og CSS
---------------
1. **Hva brukes CSS til?

* CSS (Cascading Style Sheets) brukes for å scripte stiler til HTML-kode.

2. **Hva er en CSS-regel og hva er oppbygningen av den?

* En CSS regel er en måte å påvirke og endre ulike atributter til elementer i HTML. Eksempel på oppbygging er:

```css

body {
	font-family: sans-serif;
	color: red;
}

```

3. **Hva er en CSS-velger (selector)?
* En selector er noe du oppgir i CSS når du skal lage en regel. En selector peker på et eller flere elementer enten ved bruk av HTML-tag (<body></body>), ID(#my-id) eller Class(.my-class).

4. **Hvilke CSS-velgere finnes?
* Som sagt over, er de ulike typene:
	* HTML-tag
	* ID
	* Class

5. **Hva er forskjellen mellom id- og class-velgerne i CSS?
* ID er en unik velger, mens class er en som kan brukes flere ganger.

6. **Legg til tekst i en h1-tag. Endre på tekstfargen og størrelsen på deler av teksten/bokstavene slik at du får en kreativ og fargerik tekst. Hint: span.

<body>
	<h1>Some text that's going to <span id="h1-span">get spanned so hard.</span></h1>
</body>


7. **Hvordan kan man få tekst til å være høyrejustert istedenfor venstrejustert?
* En kan få tak i teksten med en av velger-typene, også bruke:

```css

p {
	text-align: right;
}

```

8. **Hvordan endrer man bildestørrelse med CSS?

```css

img {
	width: 100px;
	width: 50%;
}

```

9. **Hvordan lager man interne lenker slik Wikipedia bruker i Contents-boksen: http://en.wikipedia.org/wiki/HTML

<a href="/wiki/HTML">HTML</a>

10. **Hva er hensikten med div-tagen?**
* Definere seksjoner slik at det er enklere å style.

11. **Er det riktig at en id bare kan brukes kun på ett element i et HTML-dokument?**
* Egentlig ikke, men det er ikke semantisk riktig, og om en begynner å blande inn JavaScript vil dette kaste ut feil.

12. **Boksmodellen (engelsk: box model) viser til tre egenskaper- hvilke tre er disse og hva er de til?**
* De tre egenskapene er:
	* Padding - Skaper rom rundt innholdet. Padding er gjennomsiktig.
	* Margin - Skaper rom rundt innholdet. Margin er gjennomsiktig.
	* Border - En border som går rundt paddingen og innholdet.

13. **Kan man sette bakgrunnsfarge på egenskapen margin?**
* Nei, det er ikke mulig.

14. **Hvordan kan man slå sammen border-color, border-style og border-width?**

```

button {
	border: red dotted 10px;
}

```

15. **Hva er CSS web tiling? Opprett noen divisjoner hvor du tiler bakgrunnen på dem.**
* 

16. **Hva styrer repeat-x og repeat-y? Hvilke andre verdier finnes det som kan angis i denne sammenheng?

17. **Test ut egenskapen min-width på en div som du gir bredde, høyde og bakgrunnsfarge en nettside.

18. **Hva er white-space egenskapen for?

19. **Hva skjer når du bruker negativ verdi på margin? Test ut ved å ha to synlige elementer ved siden av hverandre

20. **Kan man ha forskjellige størrelser på marginen på forskjellige sider av et element? Gjelder det samme mht. border og padding?

21. **Kan man sette forskjellige farger på forskjellige sider av en border- for eksempel at border på toppen av et element er rød og border på bunn er blå?

22. **Kan et HTML-element ha flere klasser?