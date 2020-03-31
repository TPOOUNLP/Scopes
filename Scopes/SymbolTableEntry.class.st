Class {
	#name : #SymbolTableEntry,
	#superclass : #Object,
	#category : #Scopes
}

{ #category : #testing }
SymbolTableEntry >> lookupForSymbol: aSymbol [
	^ self subclassResponsibility
]
