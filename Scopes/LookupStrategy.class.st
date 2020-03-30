Class {
	#name : #LookupStrategy,
	#superclass : #Object,
	#category : #Scopes
}

{ #category : #lookup }
LookupStrategy >> searchPath: scopeSymbolTable [
	"it returns a ordered collection of SymbolTables to perform lookup"

	^ scopeSymbolTable allContainers
]
