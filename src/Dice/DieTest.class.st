Class {
	#name : 'DieTest',
	#superclass : 'TestCase',
	#category : 'Dice',
	#package : 'Dice'
}

{ #category : 'tests' }
DieTest >> testInitializeIsOk [
	self assert: Die new faces equals: 6

]
