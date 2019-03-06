"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMyCounter,
	#superclass : #PackageManifest,
	#category : #'MyCounter-Manifest'
}

{ #category : #'code-critics' }
ManifestMyCounter class >> ruleReNoPrintStringInPrintOnRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Counter #printOn: #false)) #'2019-03-05T16:57:36.608941+08:00') )
]

{ #category : #'code-critics' }
ManifestMyCounter class >> ruleReTestClassNotInPackageWithTestEndingNameV1FalsePositive [
	^ #(#(#(#RGPackage #(#MyCounter)) #'2019-03-05T16:35:45.068941+08:00') )
]
