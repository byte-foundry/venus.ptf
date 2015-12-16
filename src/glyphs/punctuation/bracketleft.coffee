exports.glyphs['bracketleft'] =
	unicode: '['
	glyphName: "bracketleft"
	characterName: "LEFT SQUARE BRACKET"
	ot:
		advanceWidth: contours[1].nodes[1].x + spacingRight
	parameters:
		spacingLeft: 125 * spacing + (19)
		spacingRight: 30 * spacing
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
					expand: Object({
						width: thickness * ( 75 / 115 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: - 115
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 75 / 115 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
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
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[2].nodes[0].x + 130 * width
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 65 / 115 )
						angle: - 90 + 'deg'
						distr: 1
					})
