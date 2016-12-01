exports.glyphs['five'] =
	unicode: '5'
	glyphName: 'five'
	characterName: 'DIGIT FIVE'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 45
		spacingRight: 50 * spacing + 40
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
					x: contours[1].nodes[4].expandedTo[0].x + 25 + (33)
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
					x: Math.max(
						contours[1].nodes[2].expandedTo[0].x - 55,
						contours[1].nodes[2].x
					)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: (- 94 - 15 * serifRotate )  / 180 * Math.PI
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
					x: Math.max(
						contours[1].nodes[4].expandedTo[0].x + 200 * width + 310 - (36),
						contours[1].nodes[4].expandedTo[1].x + 0.75 * ( 145 / 115 ) * thickness * opticThickness + 10
					)
					y: ( 235 / 750 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[4].expandedTo[0].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[4].expandedTo[0].x ) * 0.5
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				4:
					x: spacingLeft + (35)
					y: ( 245 / 750 ) * capHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 140 / 115 ) * thickness * opticThickness # * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'toprightbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[2].expandedTo[1].point
					noneAnchor: contours[0].nodes[2].expandedTo[1].point
					opposite: contours[0].nodes[2].expandedTo[0].point
			transformOrigin: contours[0].nodes[2].expandedTo[1].point
			transforms: Array(
				[ 'skewX', Math.PI / 2 - contours[0].nodes[2].expand.angle ]
			)
		# 1:
		# 	base: 'serif-horizontal'
		# 	id: 'toprighttop'
		# 	parentAnchors:
		# 		0:
		# 			base: contours[0].nodes[2].expandedTo[0].point
		# 			opposite: contours[0].nodes[2].expandedTo[1].point
		# 			reversed: true
		# 	transformOrigin: contours[0].nodes[2].expandedTo[0].point
		# 	transforms: Array(
		# 		[ 'scaleY', -1 ],
		# 		[ 'skewX', Math.PI / 2 + contours[0].nodes[2].expand.angle ]
		# 	)
