exports.glyphs['five'] =
	unicode: '5'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 45 * spacing + (34)
		spacingRight: 40 * spacing
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 70 + (32)
					y: ( 350 / 750 ) * capHeight - (7)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 133 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 13 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[1].nodes[1].expandedTo[0].x - 130 - 85 * contrast # 110
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( ( 122 + 58 * contrast * contrastExtremity ) / 115 ) * thickness * opticThickness
						angle: - 90 + 46 * contrast * contrastExtremity + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[2].x - 19
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: - 94 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 48 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness # * contrast * contrastExtremity
						angle: Utils.lineAngle( contours[1].nodes[0].point, contours[0].nodes[1].point ) + Math.PI # 180 + 95 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) * 0.55
					# x: contours[1].nodes[2].expandedTo[0].x
					y: ( 490 / 750 ) * capHeight - (28)
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 113 / 115 ) * thickness * opticThickness
						angle: 180 + 77 + 'deg'
						distr: 0.25
					})
				2:
					x: 300 + 255 * width - (36)
					y: ( 235 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[4].expandedTo[0].x ) * 0.48
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * 0.48
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: spacingLeft
					y: ( 245 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness # * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
