Class {
	#name : #LookupOnContainers,
	#superclass : #LookupStrategy,
	#category : #Scopes
}

{ #category : #lookup }
LookupOnContainers >> searchPathFor: scopeSymbolTable [
	"it returns a ordered collection of SymbolTables to perform lookup"

	^ scopeSymbolTable allContainers
]
