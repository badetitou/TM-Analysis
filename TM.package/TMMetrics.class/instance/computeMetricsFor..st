as yet unclassified
computeMetricsFor: aMooseModel
	| map |
	map := Dictionary new.
	map at: #numberOfClasses put: aMooseModel numberOfClasses.
	map at: #numberOfLinesOfCodePerClass put: (aMooseModel numberOfLinesOfCodePerClass asFloat).
	map at: #numberOfDeprecatedMethod put: (self computeNumberOfDeprecatedMethodFrom: aMooseModel ).
	map at: #numberOfTest put: (self computeNumberOfTestFrom: aMooseModel).
	map at: #numberOfSkippedTest put: (self computeNumberofSkippedTestFrom: aMooseModel).
	map at: #uncalledMethod put: (self computeUncalledMethodFrom: aMooseModel ).
	map at: #numberOfUncalledMethod put: (map at: #uncalledMethod) size.
	map at: #visualizeTestLocation put: (self createMapOfTestFrom: aMooseModel).
	map at: #percentOfWellNamedTestMethod put: ((self percentOfWellNamedTestMethodFrom: aMooseModel) asFloat) .
	map at: #percentOfWellNamedTestClass put: ((self percentOfWellNamedClassMethodFrom: aMooseModel) asFloat).
	map at: 'godClass(>500 LOC)' put: (self classWithNumberOfLineSuperiorThan: 500 inModel: aMooseModel ).
	map at: 'numberOfLinePerMethodForEachClass' put: (self numberOfLinePerMethodForEachClassFrom: aMooseModel ).
	map at: #godMethod put: (self godMethodFrom: aMooseModel ).
	map at: #wrongNamedTest put: (self wrongNamedTestFrom: aMooseModel ).
	^ map