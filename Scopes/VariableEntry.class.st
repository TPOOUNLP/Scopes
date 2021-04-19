Class {
	#name : #VariableEntry,
	#superclass : #SymbolTableEntry,
	#category : #Scopes
}

{ #category : #lookup }
VariableEntry >> lookupForSymbol: aSymbol [
	^ symbol = aSymbol
		ifTrue: [ self ]
		ifFalse: [ nil ]
]
