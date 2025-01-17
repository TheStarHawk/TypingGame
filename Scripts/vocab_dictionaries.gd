extends Node

var currentCategory : String
var Category : Array

var Colors = ["red", "orange", "yellow", "green", "blue", "purple", "pink", "brown","black", "white", "grey"]
var Easter = ["basket", "bunny", "egg hunt", "eggs"]
var Hobbies = ["collecting", "puzzles", "fishing", "boating", "camping", "hiking", "ice skating", "jogging", "music", "football", "cards", "gaming", "hockey", "tennis", "riding", "roller skating", "sightseeing", "skateboarding", "surfing", "swimming", "photographery", "dog walking", "watching"]
var Instruments = ["banjo", "cymbals", "drum", "guitar", "piano", "recorder", "triangle", "trombone", "trumpet", "violin", "xylophone", "instruments"]
var Food = ["bread", "butter", "cake", "cereal", "cheese", "chicken", "chips", "chocolate", "coffee", "cookies", "eggs", "fish", "fried egg", "lemonade", "ham", "hamburger", "honey", "hot dog", "ice cream", "jam", "juice", "ketchup", "milk", "water", "pizza", "pudding", "sausage", "soup", "spaghetti", "steak", "sweets", "tea", "toast", "yogurt"]

var textureDict = {
	#Colors
	"Colors" : "ffff36",
	"red" : "res://Sprites/Colors/red.png", 
	"orange" : "res://Sprites/Colors/orange.png",
	"yellow" : "res://Sprites/Colors/yellow.png",
	"green" : "res://Sprites/Colors/green.png",
	"blue" : "res://Sprites/Colors/blue.png",
	"purple" : "res://Sprites/Colors/purple.png",
	"pink" : "res://Sprites/Colors/pink.png",
	"brown" : "res://Sprites/Colors/brown.png",
	"black" : "res://Sprites/Colors/black.png",
	"white" : "res://Sprites/Colors/white.png",
	"grey" : "res://Sprites/Colors/grey.png",
	#Instruments
	"Instruments" : "f85d00",
	"banjo" : "res://Sprites/Instruments/banjo.png",
	"cymbals" : "res://Sprites/Instruments/cymbals.png",
	"drum" : "res://Sprites/Instruments/drum.png",
	"guitar" : "res://Sprites/Instruments/guitar.png",
	"piano" : "res://Sprites/Instruments/piano.png",
	"recorder" : "res://Sprites/Instruments/recorder.png",
	"triangle" : "res://Sprites/Instruments/triangle.png",
	"trombone" : "res://Sprites/Instruments/trombone.png" 	,
	"trumpet" : "res://Sprites/Instruments/trumpet.png",
	"violin" : "res://Sprites/Instruments/violin.png",
	"xylophone" : "res://Sprites/Instruments/xylophone.png",
	"instruments" : "res://Sprites/Instruments/instruments.png",
	#Food 
	"Food" : "ffff36",
	"bread" : "res://Sprites/Food/bread.png", 
	"butter" : "res://Sprites/Food/butter.png", 
	"cake" : "res://Sprites/Food/cake.png", 
	"cereal" : "res://Sprites/Food/cereal.png", 
	"cheese" : "res://Sprites/Food/cheese.png", 
	"chicken" : "res://Sprites/Food/chicken.png", 
	"chips" : "res://Sprites/Food/chips.png", 
	"chocolate" : "res://Sprites/Food/chocolate.png", 
	"coffee" : "res://Sprites/Food/coffee.png", 
	"cookies" : "res://Sprites/Food/cookies.png", 
	"eggs" : "res://Sprites/Food/eggs.png", 
	"fish" : "res://Sprites/Food/fish.png", 
	"fried egg" : "res://Sprites/Food/friedEgg.png", 
	"lemonade" : "res://Sprites/Food/lemonade.png", 
	"ham" : "res://Sprites/Food/ham.png", 
	"hamburger" : "res://Sprites/Food/hamburger.png", 
	"honey" : "res://Sprites/Food/honey.png", 
	"hot dog" : "res://Sprites/Food/hotdog.png", 
	"ice cream" : "res://Sprites/Food/iceCream.png", 
	"jam" : "res://Sprites/Food/jam.png", 
	"juice" : "res://Sprites/Food/juice.png", 
	"ketchup" : "res://Sprites/Food/ketchup.png",
	"milk" : "res://Sprites/Food/milk.png", 
	"water" : "res://Sprites/Food/water.png", 
	"pizza" : "res://Sprites/Food/pizza.png", 
	"pudding" : "res://Sprites/Food/pudding.png", 
	"sausage" : "res://Sprites/Food/sausage.png", 
	"soup" : "res://Sprites/Food/soup.png", 
	"spaghetti" : "res://Sprites/Food/spaghetti.png", 
	"steak" : "res://Sprites/Food/steak.png", 
	"sweets" : "res://Sprites/Food/candy.png", 
	"tea" : "res://Sprites/Food/tea.png", 
	"toast" : "res://Sprites/Food/toast.png", 
	"yogurt" : "res://Sprites/Food/yogurt.png"
}
