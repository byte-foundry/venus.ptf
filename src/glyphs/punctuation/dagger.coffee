exports.glyphs['dagger'] =
	unicode: '†'
	glyphName: 'dagger'
	characterName: 'DAGGER'
	ot:
		advanceWidth: contours[1].nodes[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 60
		spacingRight: 50 * spacing + 60
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x + thickness / 2 + 170
					y: ascenderHeight
					typeOut: 'line'
					expand:
						width: ( 115 / 115 ) * thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: ( 50 / 250 ) * descender
					typeIn: 'line'
					expand:
						width: ( 115 / 115 ) * thickness
						angle: 0
						distr: 0.5
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 170
					y: contours[1].nodes[1].y
					typeIn: 'line'
					expand:
						width: ( 100 / 115 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: spacingLeft
					y: contours[0].nodes[0].expandedTo[0].y - ( contours[0].nodes[0].expandedTo[0].x - contours[1].nodes[1].x )
					typeIn: 'line'
					expand:
						width: ( 100 / 115 ) * thickness
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
