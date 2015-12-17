exports.glyphs['nine'] =
	unicode: '9'
	glyphName: "nine"
	characterName: "DIGIT NINE"
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + (36)
		spacingRight: 55 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			# junctionTop: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], - ( 40 / 115 ) * thickness + 40, true, 10 )
			# junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], ( 100 / 115 ) * thickness, true, 10 )
			junctionTop: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], 50 - ( 50 / 115 ) * thickness, true, 10 )
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], ( 100 / 115 ) * thickness + 50 - ( 50 / 115 ) * thickness, true, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 75 + (30)
					y: ( 135 / 750 ) * capHeight + (11)
					dirOut: 105 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 127 / 115 ) * thickness * opticThickness
						angle: 26 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.44
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.05
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: 300 + 275 * width - (35)
					y: ( 375 / 750 ) * capHeight + (6)
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.05
					tensionOut: 1.05
					expand: Object({
						width: ( 142 / 115 ) * thickness * opticThickness
						angle: - 170 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.48
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: - 87 + 'deg'
						distr: 0
					})
				4:
					x: spacingLeft
					y: ( 495 / 750 ) * capHeight + (3)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 4 + 'deg'
						distr: 0.25
					})
				5:
					x: contours[0].nodes[4].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[4].expandedTo[1].x ) * 0.35
					y: ( 250 / 750 ) * capHeight + (27)
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 117 / 115 ) * thickness * opticThickness
						angle: 70 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].x
					y: contours[0].nodes[5].y
					dirOut: contours[0].nodes[5].dirIn
					expand: Object({
						width: contours[0].nodes[5].expand.width
						angle: contours[0].nodes[5].expand.angle
						distr: contours[0].nodes[5].expand.distr
					})
				1:
					expandedTo:
						[
							{
								x: anchors[0].junctionTop.x
								y: anchors[0].junctionTop.y
								dirIn: Math.max(65, ( 65 / 115 ) * thickness ) + 'deg'
								type: 'smooth'
							}
							{
								x: anchors[0].junctionBottom.x
								y: anchors[0].junctionBottom.y
								dirOut: Math.min(100, Math.max(65, ( 90 / 115 ) * thickness )) + 'deg'
								type: 'smooth'
							}
						]
				2:
					expandedTo:
						[
							{
								x: contours[1].nodes[1].expandedTo[0].x + thickness / 4
								y: contours[1].nodes[1].expandedTo[0].y
							}
							{
								x: contours[1].nodes[1].expandedTo[1].x + thickness / 4
								y: contours[1].nodes[1].expandedTo[1].y
							}
						]
