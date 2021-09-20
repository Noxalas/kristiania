#PGR102 #Javascript

-------------------------

## Eksempel 1 
Å sjekke om flere enn 5 pizzaer blir bestilt, og gi rabatt.
```js

// Vi tenker oss at verdiene lagt inn i variablene kom fra bruker

var numberOfPizzas = 7;

var menu = "vegetarian"; // meat, vegetarian eller dessert

if( numberOfPizzas > 5 ){

	// gi bruker rabatt

}else{

	// gi bruker vanlig pris

}
```
-------------------------
 ## Eksempel 2 - 
 Et sjekk som skal vise en annen meny i forhold til {menu} variabelen.
```js
 
var numberOfPizzas = 7;

var menu = "vegetarian"; // meat, vegetarian eller dessert
 
if( menu === "vegetarian" ){

	// vis vegetarmeny

}else if( menu === "meat" ){

	// vis kjøttmeny

}else{

	// vis dessertmeny

}
```
-------------------------
## Eksempel 3 - 
Et sjekk som skal sjekke om bruker velger vegetar meny, og gi rabatt om 5 eller flere pizzaer er bestilt.

```js

var numberOfPizzas = 7;

var menu = "vegetarian"; // meat, vegetarian eller dessert

if( menu === "vegetarian" ){
  
	if( numberOfPizzas >= 5 ){
		// gi rabatt
	}

}else if( menu === "dessert"){
	
}
```
-------------------------
## Eksempel 4 - 
Helt likt sjekk som eksempel 3, men med "meat" meny lagt til som en OR.

```js

var numberOfPizzas = 7;

var menu = "vegetarian"; // meat, vegetarian eller dessert

if( menu === "vegetarian" || menu === "meat"){

	if( numberOfPizzas >= 5 ){
		// gi rabatt
	}

}else if( menu === "dessert"){
  
}
```