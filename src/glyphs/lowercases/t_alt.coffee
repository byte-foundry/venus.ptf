exports.glyphs['t_alt'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	altImg: 'cross-t.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 30
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + 50 + thickness * ( 125 / defaultThickness ) / 2
			y: ascenderHeight + overshoot
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: xHeight + ( 135 / 520 ) * xHeight
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: spacingLeft + ( (contours[1].nodes[1].x + 200 * width + 105) - spacingLeft ) * 0.5
					y: 0
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Math.max(
						contours[1].nodes[1].x + 200 * width + 105,
						contours[0].nodes[1].expandedTo[1].x + 10
					)
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 90 / defaultThickness ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 90 / defaultThickness ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
