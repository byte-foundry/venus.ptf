exports.glyphs['z'] =
	unicode: 'z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 30 * spacing
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
					x: 300
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
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				# 6:
				# 	x: 153 + 200
				# 	y: 0
				# 	dirOut: 0 + 'deg'
				# 	typeOut: 'line'
				# 	expand: Object({
				# 		width: ( 90 / 115 ) * thickness
				# 		angle: 90 + 'deg'
				# 		distr: 0
				# 	})
