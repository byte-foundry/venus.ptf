exports.glyphs['bracketright'] =
	unicode: ']'
	glyphName: "bracketright"
	characterName: "RIGHT SQUARE BRACKET"
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 30 * spacing + (0)
		spacingRight: 125 * spacing
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
					x: contours[1].nodes[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 115 )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: - 115
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 115 )
						angle: 0 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x + 130 * width
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[1].nodes[1].x
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 1
					})
