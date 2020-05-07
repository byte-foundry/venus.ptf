exports.glyphs['Q_alt'] =
	unicode: 'Q'
	glyphName: 'Q'
	characterName: 'LATIN CAPITAL LETTER Q'
	altImg: 'alt-grotesk-squared-Q.svg'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 55
		spacingRight: 50 * spacing + 55
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft + (36)
					y: ( 375 / 750 ) * capHeight
					dirOut: Math.PI / 2
					tensionOut: 0.95
					expand:
						width: ( 145 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0
					type: 'smooth'
					tensionIn: 0.95
					tensionOut: 0.95
					expand:
						width: ( 110 / defaultThickness ) * thickness * opticThickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[0].x + 540 + 200 * width - (72),
						contours[0].nodes[0].expandedTo[1].x + 0.75 * ( 145 / defaultThickness ) * thickness * opticThickness + 10
					)
					y: contours[0].nodes[0].y
					dirOut:( - 90 ) / 180 * Math.PI
					type: 'smooth'
					tensionIn: 0.95
					expand:
						width: ( 145 / defaultThickness ) * thickness * opticThickness
						angle: Math.PI
						distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: Math.PI
					type: 'smooth'
					expand:
						width: ( 110 / defaultThickness ) * thickness * opticThickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].expandedTo[0].y + ( 30 / defaultThickness ) * thickness
					typeOut: 'line'
					expand:
						width: ( 136 / defaultThickness ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[1].nodes[0].x
					y: ( 155 / 250 ) * descender
					typeIn: 'line'
					expand:
						width: ( 136 / defaultThickness ) * thickness
						angle: 0
						distr: 0.5
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand:
						width: ( 120 / defaultThickness ) * thickness
						angle: Math.PI / 2
						distr: 0.5
				1:
					x: contours[2].nodes[0].x + 100 + ( 46 / defaultThickness ) * thickness + 200 * width
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand:
						width: ( 120 / defaultThickness ) * thickness
						angle: Math.PI / 2
						distr: 0.5
