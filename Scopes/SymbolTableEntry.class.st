Class {
	#name : #SymbolTableEntry,
	#superclass : #Object,
	#instVars : [
		'symbol',
		'type'
	],
	#category : #Scopes
}

{ #category : #'as yet unclassified' }
SymbolTableEntry class >> name: aSymbol type: aType [
	self new
		name: aSymbol;
		type: aType;
		yourself
]

{ #category : #lookup }
SymbolTableEntry >> lookupForSymbol: aSymbol [
	^ nil
]

{ #category : #accessing }
SymbolTableEntry >> symbol [
	^ symbol
]

{ #category : #accessing }
SymbolTableEntry >> symbol: anObject [
	symbol := anObject
]

{ #category : #accessing }
SymbolTableEntry >> type [
	^ type
]

{ #category : #accessing }
SymbolTableEntry >> type: anObject [
	type := anObject
]
