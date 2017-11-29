as yet unclassified
numberOfLinePerMethodForEachClassFrom: aMooseModel
	^ (aMooseModel allModelClasses collect: [ :e | { (e numberOfLinesOfCode / e numberOfMethods) asFloat -> e} ]) asOrderedCollection .