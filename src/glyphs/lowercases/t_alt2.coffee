exports.glyphs['t_alt2'] =
	unicode: 't'
	glyphName: 't'
	characterName: 'LATIN SMALL LETTER T'
	altImg: 'horizontal-t.svg'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					x: contours[0].nodes[1].expandedTo[0].x
					y: xHeight + ( 135 / 520 ) * xHeight
					typeOut: 'line'
					expand:
						width: thickness / Math.cos( contours[0].nodes[0].expand.angle )
						angle: 0
						distr: 0
				1:
					x: spacingLeft + ( (contours[1].nodes[1].x + 200 * width + 105) - spacingLeft ) * 0.45
					y: 130 +  ( 15 / 115 ) * thickness #* contrast
					typeIn: 'line'
					tensionOut: 1.25
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				2:
					x: Math.min(
						contours[0].nodes[1].expandedTo[0].x + ( contours[1].nodes[0].x - contours[0].nodes[1].expandedTo[0].x ) * 0.5,
						contours[0].nodes[1].expandedTo[0].x + 130 +  ( 15 / 115 ) * thickness
					)
					y: 0
					typeOut: 'line'
					dirIn: 0
					tensionIn: 1.6
					expand:
						width: ( 107 / 115 ) * thickness * contrast * contrastExtremity
						angle: 62 / 180 * Math.PI
						distr: 0
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: 0
					dirIn: 0
					expand:
						width: Math.sin( contours[0].nodes[2].expand.angle ) * ( 107 / 115 ) * thickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
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
						width: ( 90 / 115 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: spacingLeft
					y: xHeight
					typeOut: 'line'
					expand:
						width: ( 90 / 115 ) * thickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
