exports.glyphs['Q_cap'] =
	unicode: 'Q'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 55 * spacing + (63)
		spacingRight: 55 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: ( 375 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					tensionOut: 0.95
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 0.95
					tensionOut: 0.95
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: 500 + 295 * width - (36)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: 0.95
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[3].x + ( 5 / 115 ) * thickness + (22)
					y: contours[0].nodes[3].expandedTo[1].y + Math.min( 90, ( 90 / 115 ) * thickness ) + (16)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point )
						distr: 0.25
					})
				0:
					x: contours[0].nodes[2].expandedTo[1].x - (5)
					y: ( 90 / 250 ) * descender
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point )
						distr: 0
					})
