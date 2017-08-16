exports.glyphs['exclam'] =
	unicode: '!'
	glyphName: 'exclam'
	characterName: 'EXCLAMATION MARK'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 45
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + ( 135 / 115 ) * thickness / 2
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: ( 440 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
				2:
					x: contours[0].nodes[0].x
					y: minThickness + 170 - ( 85 / 115 ) * thickness
					typeIn: 'line'
					expand:
						width: ( 35 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
	components:
		0:
			base: 'dot'
			id: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[0].x
					y: 0
