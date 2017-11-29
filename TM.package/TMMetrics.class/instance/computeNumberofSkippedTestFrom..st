as yet unclassified
computeNumberofSkippedTestFrom: aMooseModel
	| annotations |
	 annotations := (aMooseModel allAnnotationTypes select: [ :e | e name = 'Skip' ]). 
	annotations ifEmpty: [ ^ 0 ] ifNotEmpty: [ :e |^ (e at: 1) annotatedEntities size ]