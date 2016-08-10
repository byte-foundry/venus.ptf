exports.glyphs['t'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[1].x + 50 + thickness * ( 125 / 115 ) / 2
			y: ascenderHeight + overshoot
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					expandedTo:
						[
							{
								x: contours[0].nodes[1].expandedTo[0].x
								y: Math.max(
									contours[0].nodes[0].expandedTo[1].y - ( 95 / 115 ) * thickness,
									xHeight
								)
								typeOut: 'line'
							}
							{
								x: contours[0].nodes[1].expandedTo[1].x
								y: Math.min(
									xHeight + 230,
									ascenderHeight
								)
								typeIn: 'line'
							}
						]
				1:
					x: spacingLeft + ( (contours[1].nodes[1].x + 200 * width + 105) - spacingLeft ) * 0.45
					y: 130 +  ( 15 / 115 ) * thickness #* contrast
					dirOut: - 90 + 'deg'
					tensionOut: 1.25
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x: Math.min(
						contours[0].nodes[1].expandedTo[0].x + ( contours[1].nodes[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5,
						contours[0].nodes[1].expandedTo[0].x + 130 +  ( 15 / 115 ) * thickness
					)
					y: 0
					typeOut: 'line'
					type: 'smooth'
					tensionIn: 1.6
					expand: Object({
						width: ( 107 / 115 ) * thickness * contrast * contrastExtremity
						angle: 62 + 'deg'
						distr: 0
					})
				3:
					expandedTo:
						[
							{
								x: contours[1].nodes[0].expandedTo[0].x
								y: contours[0].nodes[2].expandedTo[0].y
							}
							{
								x: contours[0].nodes[3].expandedTo[0].x
								y: contours[0].nodes[2].expandedTo[1].y
							}
						]
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
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
