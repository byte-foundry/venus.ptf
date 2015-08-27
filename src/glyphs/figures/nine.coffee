exports.glyphs['nine'] =
	unicode: '9'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
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
			junctionTop: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], - ( 40 / 115 ) * thickness + 40, true, 10 )
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], ( 100 / 115 ) * thickness, true, 10 )
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
					x: 295
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
					x: 575 - (35)
					y: ( 375 / 750 ) * capHeight + (6)
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.05
					expand: Object({
						width: ( 142 / 115 ) * thickness * opticThickness
						angle: - 170 + 'deg'
						distr: 0.25
					})
				3:
					x: 300
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
					x: 270 + (10)
					y: ( 250 / 750 ) * capHeight + (27)
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 117 / 115 ) * thickness * opticThickness
						angle: 70 + 'deg'
						distr: 0.25
					})
				6:
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[1].x
								y: contours[0].nodes[2].expandedTo[1].y
								dirIn: ( 63 / 115 ) * thickness + 'deg'
								dirIn: 67 + 'deg'
								tensionOut: 0.5
								type: 'smooth'
							}
							{
								x: anchors[0].junctionBottom.x
								y: anchors[0].junctionBottom.y
								dirOut: 90 + 'deg'
								type: 'smooth'
							}
						]
				7:
					x: 300
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 0 / 115 ) * thickness * opticThickness
						angle: - 87 + 'deg'
						distr: 0
					})
				8:
					x: spacingLeft
					y: ( 495 / 750 ) * capHeight + (3)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 4 + 'deg'
						distr: 0.25
					})
