as yet unclassified
godMethodFrom: aMooseModel
	^ (aMooseModel allModelMethods collect: [ :a | { a numberOfLinesOfCode  -> a } ]) asOrderedCollection sort: [ :a :b | ((a at: 1) key) > ((b at: 1) key) ]