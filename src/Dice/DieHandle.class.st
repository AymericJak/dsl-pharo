"
DieHandle model to have a die list.
"
Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'diceList'
	],
	#category : 'Dice-Model',
	#package : 'Dice',
	#tag : 'Model'
}

{ #category : 'arithmetic' }
DieHandle >> + aDicable [

	^ aDicable sumWithHandle: self
]

{ #category : 'initialization' }
DieHandle >> addDie: aDie [
	diceList add: aDie 
]

{ #category : 'initialization' }
DieHandle >> diceList [
	^ diceList
]

{ #category : 'initialization' }
DieHandle >> diceList: aList [
	diceList := aList
]

{ #category : 'initialization' }
DieHandle >> diceNumber [
	^ diceList size
]

{ #category : 'initialization' }
DieHandle >> faces [
	| handleSum |
	handleSum := 0.
	diceList do: [ :die | handleSum := handleSum + die faces ].
	^ handleSum
]

{ #category : 'initialization' }
DieHandle >> initialize [
	super initialize.
	diceList := OrderedCollection new

]

{ #category : 'initialization' }
DieHandle >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' ('.
	diceList do: [ :die | die printOn: aStream ].
	aStream nextPutAll: ')'
]

{ #category : 'initialization' }
DieHandle >> roll [

	| handleSum |
	handleSum := 0.
	diceList do: [ :die | handleSum := handleSum + (die roll) ].
	^ handleSum
]

{ #category : 'arithmetic' }
DieHandle >> sumWithDie: aDie [
	"On peut ajouter un dé à un set, donc on créé une copie de notre ancien set et on ajoute le dé en paramètre"

	| handle |
	handle := self class new.
	self diceList do: [ :each | handle addDie: each ].
	handle addDie: aDie.
	^ handle
]

{ #category : 'arithmetic' }
DieHandle >> sumWithHandle: aDieHandle [

	| hd |
	hd := self class new.
	self diceList do: [ :each | hd addDie: each ].
	aDieHandle diceList do: [ :each | hd addDie: each ].
	^ hd
]
