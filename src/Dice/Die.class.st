"
Die class.
"
Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces'
	],
	#category : 'Dice-Model',
	#package : 'Dice',
	#tag : 'Model'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: anInteger [ 
	"Create and initialize a new die with aNumber faces."
	| instance |
	instance := self new.
	instance faces: anInteger.
	^ instance
]

{ #category : 'initialization' }
Die >> + aDicable [
	"aDicable : un dé ou un set de dés."

	^ aDicable sumWithDie: self
]

{ #category : 'initialization' }
Die >> faces [
	^ faces
]

{ #category : 'initialization' }
Die >> faces: anInteger [

	faces := anInteger
]

{ #category : 'initialization' }
Die >> initialize [

	super initialize.
	faces := 6
]

{ #category : 'printing' }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ')'
]

{ #category : 'as yet unclassified' }
Die >> roll [
	^ faces atRandom
]

{ #category : 'as yet unclassified' }
Die >> sumWithDie: aDie [
	"A un dé, je souhaite ajouter un autre dé, donc je créé un set et ajoute le receveur et le dé en paramètre"
	^ DieHandle new
		  addDie: self;
		  addDie: aDie;
		  yourself
]

{ #category : 'as yet unclassified' }
Die >> sumWithHandle: aDieHandle [

| hd |
hd := DieHandle new.
aDieHandle diceList
 do: [ :each | hd addDie: each ].
hd addDie: self.
^ hd
]
