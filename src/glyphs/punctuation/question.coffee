exports.glyphs['question'] =
	unicode: '?'
	glyphName: 'question'
	characterName: 'QUESTION MARK'
	ot:
		advanceWidth: spacingLeft + contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 15 * spacing + (28)
		spacingRight: 35 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: ( 560 / 750 ) * capHeight - (5)
					dirOut: 85 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 112 / 115 ) * thickness
						angle: - 10 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * ( 0.55 + (0.05 - 0.05 * width) )
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: 200 + 285 * width - (30)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.2
					expand: Object({
						width: ( 120 / 115 ) * thickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: 290 + (20)
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.65
					y: ( (400 + ( (45 / 115) * thickness )) / 750 ) * capHeight - (19)
					# TODO: it should depends of thickness
					dirOut: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].expandedTo[0].point )
					dirOut: Math.max(
						25,
						Math.min(
							35,
							(( 35 / 115 ) * thickness) / 750 * capHeight
						)
					) + 'deg'
					type: 'smooth'
					tensionIn: 1.2
					tensionOut: 1.4
					expand: Object({
						width: ( 110 / 115 ) * thickness
						angle: 180 - 43 + 'deg'
						distr: 0.75
					})
				4:
					x: contours[0].nodes[1].x - ( 8 / 115 ) * thickness
					y: minThickness + 170 - ( 85 / 115 ) * thickness
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.4
					expand: Object({
						width: ( 110 / 115 ) * thickness
						angle: 180 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: contours[0].nodes[4].x
					y: 0
