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
