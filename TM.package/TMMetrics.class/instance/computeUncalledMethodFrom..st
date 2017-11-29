as yet unclassified
computeUncalledMethodFrom: aMooseModel
	^ aMooseModel allModelMethods select: [ :e | e invokingMethods size = 0 ]