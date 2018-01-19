exports.glyphs['bracketleft'] =
	unicode: '['
	glyphName: 'bracketleft'
	characterName: 'LEFT SQUARE BRACKET'
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 125 + (19)
		spacingRight: 50 * spacing + 30
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 75 / 115 )
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[0].x
					y: - 115
					typeIn: 'line'
					expand:
						width: thickness * ( 75 / 115 )
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand:
						width: thickness * ( 65 / 115 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].x + 130 * width
					y: contours[1].nodes[0].y
					typeIn: 'line'
					expand:
						width: thickness * ( 65 / 115 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: thickness * ( 65 / 115 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 1
				1:
					x: contours[2].nodes[0].x + 130 * width
					y: contours[2].nodes[0].y
					typeIn: 'line'
					expand:
						width: thickness * ( 65 / 115 )
						angle:( - 90 ) / 180 * Math.PI
						distr: 1
