exports.glyphs['z'] =
	unicode: 'z'
	ot:
		advanceWidth: contours[0].nodes[8].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 30 * spacing + (17)
		spacingRight: 20 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 45
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[3].expandedTo[1].x + ( 15 / 115 ) * thickness
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: 424
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 115 ) * thickness
						angle: - 90 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 137 / 115 ) * thickness
						angle: - 177 + 'deg'
						distr: 0
					})
				4:
					x: spacingLeft
					y: contours[0].nodes[5].expandedTo[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness
						angle: 180 + 5 + 'deg'
						distr: 1
					})
				5:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 115 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				6:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 70 / 115 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				7:
					x: contours[0].nodes[4].expandedTo[0].x - ( 10 / 115 ) * thickness
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				8:
					x: 440
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 90 / 115 ) * thickness
						angle: 180 + 90 + 'deg'
						distr: 1
					})
