exports.controls = [
	tab: true
	label: 'Func'
	icon: '...'
	parameters: [
		name: 'xHeight'
		label: 'x Height'
		min: 300
		max: 900
		step: 1
		init: 520
		minAdvised: 450
		maxAdvised: 900
		disabled: false
		advanced: true
		group: 'verticalFunc'
	,
		name: 'capDelta'
		label: 'Capital Height'
		min: 0
		max: 400
		step: 1
		init: 230
		minAdvised: 0
		maxAdvised: 400
		disabled: false
		advanced: false
		group: 'verticalFunc'
	,
		name: 'ascender'
		label: 'Ascender'
		min: 50
		max: 800
		step: 1
		init: 230
		minAdvised: 140
		maxAdvised: 300
		disabled: false
		advanced: false
		group: 'verticalFunc'
	,
		name: 'descender'
		label: 'Descender'
		min: -850
		max: -50
		step: 1
		init: -250
		minAdvised: -300
		maxAdvised: -210
		disabled: false
		advanced: false
		group: 'verticalFunc'
	,
		name: 'crossbar'
		label: 'Crossbar'
		min: 0.8
		max: 1.1
		step: 0.001
		init: 1
		minAdvised: 0.88
		maxAdvised: 1.05
		disabled: false
		advanced: false
		group: 'verticalFunc'
	,
		name: 'diacriticHeight'
		label: 'Diacritic Position'
		min: -5
		max: 150
		step: 1
		init: 80
		minAdvised: 20
		maxAdvised: 150
		disabled: false
		advanced: false
		group: 'verticalFunc'
	,
		name: 'width'
		label: 'Width'
		min: 0.4
		max: 5
		step: 0.01
		init: 1
		minAdvised: 0.85
		maxAdvised: 1.3
		disabled: false
		advanced: false
		group: 'horizontalFunc'
	,
		name: 'slant'
		label: 'Slant'
		min: -15
		max: 30
		step: 0.2
		init: 0
		minAdvised: -15
		maxAdvised: 25
		disabled: false
		advanced: false
		group: 'horizontalFunc'
	,
		name: 'overshoot'
		label: 'Overshoot'
		min: 0
		max: 20
		step: 1
		init: 9
		minAdvised: 0
		maxAdvised: 20
		disabled: false
		advanced: true
		group: 'spacingFunc'
	,
		name: 'spacing'
		label: 'Spacing'
		min: -1
		max: 3
		step: 0.01
		init: 0
		minAdvised: 0
		maxAdvised: 1.1
		disabled: false
		advanced: false
		group: 'spacingFunc'
	]
,
	tab: true
	label: 'Style'
	icon: '...'
	parameters: [
		name: 'thickness'
		label: 'Thickness'
		min: 4
		max: 180
		step: 1
		init: 115
		minAdvised: 4
		maxAdvised: 180
		disabled: false
		advanced: true
		group: 'style'
	,
		name: 'opticThickness'
		label: 'Capital thickness'
		min: 0.7
		max: 1.3
		step: 0.01
		init: 0.95
		minAdvised: 0.9
		maxAdvised: 1.1
		disabled: false
		advanced: false
		group: 'style'
	,
		name: 'smallCapDelta'
		label: 'SC Height'
		min: 0
		max: 2.5
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.5
		disabled: false
		advanced: true
		group: 'style'
	,
		name: '_scThickness'
		label: 'SC Thickness'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.9
		minAdvised: 0.85
		maxAdvised: 1
		disabled: false
		advanced: true
		group: 'style'
	,
		name: '_scWidth'
		label: 'SC Width'
		min: 0.5
		max: 1.5
		step: 0.05
		init: 0.7
		minAdvised: 0.65
		maxAdvised: 0.75
		disabled: false
		advanced: true
		group: 'style'
	,
		name: '_contrast'
		label: 'Contrast'
		min: -1.3
		max: -0.15
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.3
		disabled: false
		advanced: false
		group: 'style'
	,
		name: '_contrastExtremity'
		label: 'extremity'
		min: -1.5
		max: -0.2
		step: 0.01
		init: -1
		minAdvised: -1
		maxAdvised: -0.5
		disabled: false
		advanced: false
		child: true
		group: 'style'
	,
		name: 'aperture'
		label: 'Aperture'
		min: 0.3
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 2
		disabled: false
		advanced: false
		group: 'style'
	,
		name: 'apertureTop'
		label: 'Top'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		advanced: true
		child: true
		group: 'style'
	,
		name: 'apertureBottom'
		label: 'Bottom'
		min: 0.3
		max: 1.7
		step: 0.01
		init: 1
		minAdvised: 0.1
		maxAdvised: 1
		disabled: false
		advanced: true
		child: true
		group: 'style'
	,
		name: 'curviness'
		label: 'Curviness'
		min: 0.1
		max: 1.4
		step: 0.1
		init: 0.6
		minAdvised: 0.5
		maxAdvised: 0.75
		disabled: false
		advanced: true
		group: 'style'
	]
,
	tab: true
	label: 'Serif'
	icon: '...'
	parameters: [
		name: 'serifWidth'
		label: 'Serif Width'
		min: 0.1 #temporary FIX (instead 0)
		max: 200
		step: 1
		init: 0.1
		minAdvised: 0.1
		maxAdvised: 200
		disabled: false
		advanced: true
		group: 'serifBase'
	,
		name: 'serifHeight'
		label: 'Serif Height'
		min: 0.001
		max: 100
		step: 1
		init: 5
		minAdvised: 0.001
		maxAdvised: 100
		disabled: false
		advanced: true
		group: 'serifBase'
	,
		name: 'midWidth'
		label: 'Middle Width'
		min: 0.5
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0.8
		maxAdvised: 1.2
		disabled: false
		advanced: false
		group: 'serifIncline'
	,
		name: 'serifMedian'
		label: 'Serif Median'
		min: 0.2
		max: 1.5
		step: 0.01
		init: 1
		minAdvised: 0.10
		maxAdvised: 0.20
		disabled: false
		advanced: false
		group: 'serifIncline'
	,
		name: 'serifCurve'
		label: 'Bracket Curve'
		min: 0
		max: 100
		step: 1
		init: 0
		minAdvised: 0
		maxAdvised: 100
		disabled: false
		advanced: false
		group: 'serifbracket'
	,
		name: 'serifRoundness'
		label: 'Bracket Roundness'
		min: 0
		max: 1.8
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.5
		disabled: false
		advanced: false
		group: 'serifbracket'
	,
		name: 'serifTerminal'
		label: 'Serif Terminal'
		min: -0.5
		max: 2
		step: 0.01
		init: 0
		minAdvised: 0
		maxAdvised: 0.8
		disabled: false
		advanced: false
		group: 'serifTerminal'
	,
		name: 'serifTerminalCurve'
		label: 'Serif Terminal Curve'
		min: 0
		max: 2
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 2
		disabled: false
		advanced: false
		group: 'serifTerminal'
	,
		name: 'serifArc'
		label: 'Serif Arc'
		min: -1.5
		max: 0.6
		step: 0.01
		init: 0
		minAdvised: -0.2
		maxAdvised: 0.5
		disabled: false
		advanced: true
		group: 'serifAdvanced'
	,
		name: 'spurHeight'
		label: 'Spur Height'
		min: 0
		max: 3
		step: 1
		init: 0
		minAdvised: 0
		maxAdvised: 1
		disabled: false
		advanced: true
		group: 'serifAdvanced'
	,
		name: 'serifRotate'
		label: 'Serif Rotation'
		min: 0
		max: 2
		step: 0.1
		init: 0
		minAdvised: 0
		maxAdvised: 0.8
		disabled: false
		advanced: true
		group: 'serifAdvanced'
	,
		name: 'serifBall'
		label: 'Terminal Ball'
		min: 0.01
		max: 3
		step: 0.01
		init: 1
		minAdvised: 0
		maxAdvised: 1.1
		disabled: false
		advanced: true
		group: 'serifAdvanced'
	]
]
