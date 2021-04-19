Class {
	#name : #LookupOnContainers,
	#superclass : #LookupStrategy,
	#instVars : [
		'entries'
	],
	#category : #Scopes
}

{ #category : #lookup }
LookupOnContainers >> lookupForSymbol: aSymbol in: scopeSymbolTable [
	^ entries
		detect: [ :entry | entry symbol = aSymbol ]
		ifNone: [ self lookupInContainerForSymbol: aSymbol ]
]

{ #category : #lookup }
LookupOnContainers >> searchPathFor: scopeSymbolTable [
	"it returns a ordered collection of SymbolTables to perform lookup"

	^ scopeSymbolTable allContainers
]
