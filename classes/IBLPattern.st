<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.0 of 26 de setembro de 2014 on 28 de abril de 2015 at 14h31min09s</time-stamp>


<class>
<name>IBLPattern</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>x y class name sim correct incorrect upperAcceptanceBoundary lowerAcceptanceBoundary upperDroppingBoundary lowerDroppingBoundary </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category>IBL</category>
<attributes>
<package>IBL</package>
</attributes>
</class>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>IBLPattern class</class-id> <category>instance creation</category>

<body package="IBL" selector="x:y:">x: aNumber y: anotherNumber
</methods>

<!-- -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -   -->


<methods>
<class-id>IBLPattern</class-id> <category>accessing</category>

<body package="IBL" selector="correct">correct

<body package="IBL" selector="correct:">correct: aNumber

<body package="IBL" selector="incorrect">incorrect

<body package="IBL" selector="incorrect:">incorrect: aNumber

<body package="IBL" selector="lowerAcceptanceBoundary">lowerAcceptanceBoundary

<body package="IBL" selector="lowerAcceptanceBoundary:">lowerAcceptanceBoundary: aNumber

<body package="IBL" selector="lowerDroppingBoundary">lowerDroppingBoundary

<body package="IBL" selector="lowerDroppingBoundary:">lowerDroppingBoundary: aNumber

<body package="IBL" selector="myClass">myClass

<body package="IBL" selector="myClass:">myClass: aClass

<body package="IBL" selector="name">name

<body package="IBL" selector="name:">name: aNumber

<body package="IBL" selector="sim">sim

<body package="IBL" selector="sim:">sim: aNumber

<body package="IBL" selector="upperAcceptanceBoundary">upperAcceptanceBoundary

<body package="IBL" selector="upperAcceptanceBoundary:">upperAcceptanceBoundary: aNumber

<body package="IBL" selector="upperDroppingBoundary">upperDroppingBoundary

<body package="IBL" selector="upperDroppingBoundary:">upperDroppingBoundary: aNumber

<body package="IBL" selector="x">x

<body package="IBL" selector="x:">x: aNumber

<body package="IBL" selector="y">y

<body package="IBL" selector="y:">y: aNumber
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>printing</category>

<body package="IBL" selector="printOn:">printOn: anObject
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>calculations</category>

<body package="IBL" selector="dropableAt:">dropableAt: anIBLBrowser

<body package="IBL" selector="incCorrect">incCorrect

<body package="IBL" selector="incIncorrect">incIncorrect

<body package="IBL" selector="lowerBoundaryZ:">lowerBoundaryZ: z

<body package="IBL" selector="notAcceptableAt:">notAcceptableAt: anIBLBrowser

<body package="IBL" selector="simXY:">simXY: anotherPattern

<body package="IBL" selector="updateAcceptanceBoundaries">updateAcceptanceBoundaries

<body package="IBL" selector="updateAcceptanceBoundariesUsing:">updateAcceptanceBoundariesUsing: anIBLBrowser

<body package="IBL" selector="updateConfidenceIntervalsUsing:">updateConfidenceIntervalsUsing: anIBLBrowser

<body package="IBL" selector="updateDroppingBoundaries">updateDroppingBoundaries

<body package="IBL" selector="updateDroppingBoundariesUsing:">updateDroppingBoundariesUsing: anIBLBrowser

<body package="IBL" selector="upperBoundaryZ:">upperBoundaryZ: z
</methods>

<methods>
<class-id>IBLPattern</class-id> <category>initialize-release</category>

<body package="IBL" selector="reinitialize">reinitialize
</methods>

</st-source>