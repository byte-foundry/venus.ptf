exports.glyphs['parenright'] =
	unicode: ')'
	glyphName: 'parenright'
	characterName: 'RIGHT PARENTHESIS'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['translateX', - contours[0].nodes[0].expandedTo[0].x - spacingRight],
		['skewX',( slant ) / 180 * Math.PI],
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 100
		spacingRight: 50 * spacing + 20
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + 50 * width + 150
					y: capHeight + 45
					dirOut:( - 140 ) / 180 * Math.PI
					tensionOut: 1.1
					expand:
						width: ( 60 / defaultThickness ) * thickness
						angle:( - 48 ) / 180 * Math.PI
						distr: 0
				1:
					x: spacingLeft + (19)
					y: capHeight * ( 335 / 750 )
					dirOut:( - 90 ) / 180 * Math.PI
					tensionOut: 1.1
					tensionIn: 1.1
					expand:
						width: ( 75 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
				2:
					x: contours[0].nodes[0].x
					y: - 115
					dirIn:( 140 ) / 180 * Math.PI
					tensionIn: 1.1
					expand:
						width: ( 60 / defaultThickness ) * thickness
						angle:( 48 ) / 180 * Math.PI
						distr: 0
			transformOrigin: Object({x: (contours[0].nodes[2].expandedTo[1].x + spacingRight) / 2, y: 0})
			transforms: Array(
				['rotate',( 180 ) / 180 * Math.PI]
				['translateY', (capHeight + 45) - 115 ],
			)
