exports.glyphs['ampersand'] =
	unicode: '&'
	ot:
		advanceWidth: spacingLeft + contours[0].nodes[0].expandedTo[0].x + spacingRight
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 35 * spacing + (0)
		spacingRight: 25 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x + 66 - (10)
					y: 2 + (0)
					dirOut: - 158 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 98 / 115 ) * thickness
						angle: 99 + 'deg'
						distr: 0
					})
				1:
					x: 350 + 235 * width
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					tensionOut: 1.5
					expand: Object({
						width: ( 105 / 115 ) * thickness
						angle: 85 + 'deg'
						distr: 0
					})
				2:
					x: 386 + (23)
					y: ( 133 / 750 ) * capHeight + (16)
					dirOut: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
					type: 'smooth'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 9 + 'deg'
						distr: 0.25
					})
				3:
					x: 192 + (23)
					y: ( 355 / 750 ) * capHeight + (16)
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					type: 'smooth'
					expand: Object({
						width: ( 112 / 115 ) * thickness
						angle: 35 + 'deg'
						distr: 0.25
					})
				4:
					x: 127 + (27)
					y: ( 530 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 108 / 115 ) * thickness
						angle: 5 + 'deg'
						distr: 0.25
					})
				5:
					x: 300 + (0)
					y: ( 695 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 95 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				6:
					x: 464 - (25)
					y: ( 545 / 750 ) * capHeight - (1)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 99 / 115 ) * thickness
						angle: - 177 + 'deg'
						distr: 0.25
					})
				7:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point ) - Math.PI / 12 + ( Math.PI / 2 / 115 ) * thickness
					type: 'smooth'
					expand: Object({
						width: ( 83 / 115 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
						distr: 0.9
					})
