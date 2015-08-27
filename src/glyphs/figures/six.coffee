exports.glyphs['six'] =
	unicode: '6'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 55 * spacing + (34)
		spacingRight: 50 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	anchors:
		0:
			junctionTop: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], - ( 100 / 115 ) * thickness + 100, true, 10 )
			junctionBottom: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[1], contours[0].nodes[2].expandedTo[1], ( 100 / 115 ) * thickness, true, 10 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 555 - (25)
					y: ( 635 / 750 ) * capHeight - (16)
					dirOut: 120 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 119 / 115 ) * thickness * opticThickness
						angle: - 147 + 'deg'
						distr: 0.25
					})
				1:
					x: 335 + (0)
					y: capHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 105 / 115 ) * thickness * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight + (0)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.1
					expand: Object({
						width: ( 142 / 115 ) * thickness * opticThickness
						angle: 10 + 'deg'
						distr: 0.25
					})
				3:
					x: 320
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: 0
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: 580 - (36)
					y: ( 245 / 750 ) * capHeight + (0)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				5:
					x: 350 - (5)
					y: ( 500 / 750 ) * capHeight - (28)
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 113 / 115 ) * thickness * opticThickness
						angle: - 103 + 'deg'
						distr: 0.25
					})
				6:
					expandedTo:
						[
							{
								x: contours[0].nodes[2].expandedTo[1].x
								y: contours[0].nodes[2].expandedTo[1].y
								# x: anchors[0].junctionTop.x
								# y: anchors[0].junctionTop.y
								dirIn: ( 65 / 115 ) * thickness + 'deg'
								# dirIn: Math.min( 90, Math.min(90, ( 65 / 115 ) * thickness )) + 'deg'
								# tensionOut: 0
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
					x: 320
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: 90 + 'deg'
						distr: 0
					})
				8:
					x: 580 - (36)
					y: ( 245 / 750 ) * capHeight + (0)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
