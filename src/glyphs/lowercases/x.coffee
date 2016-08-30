exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 5 + (32) + serifWidth / 2
		spacingRight: 50 * spacing + 5 + serifWidth / 2
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
					x: spacingLeft
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						# width: ( 140 / 115 ) * thickness
						width: Math.min(
							thickness / ( Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) ) ),
							thickness + 75
						)
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Math.max(
						(contours[0].nodes[0].x - 0.25 * (( 140 / 115 ) * thickness)) + 200 * width + 160 + (35),
						(contours[0].nodes[0].x + 0.75 * (( 140 / 115 ) * thickness)) + thickness + 10
					)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: Math.min(
							thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) ),
							thickness + 75
						)
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					# y: xHeight
					# x: Utils.onLine({
					# 	on: [ contours[1].nodes[0].point, contours[2].nodes[1].point ]
					# 	y: xHeight
					# })
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						# width: ( 125 / 115 ) * thickness * contrast
						width: Math.min(
							thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) ) * contrast,
							thickness + 75
						)
						angle: 0 + 'deg'
						distr: 0.5 * contrast
					})
				# 0:
				# 	###########################
				# 	# TODO: thickness issues
				# 	###########################
				# 	x: Utils.onLine({
				# 		on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
				# 		y: ( (260 - ( 50 / 115 ) * thickness) / 520 ) * xHeight
				# 	})
				# 	y: ( (260 - ( 50 / 115 ) * thickness) / 520 ) * xHeight
				# 	###########################
				# 	dirOut: 0 + 'deg'
				# 	typeOut: 'line'
				# 	expand: Object({
				# 		width: ( 104 / 115 ) * thickness * contrast * contrastExtremity
				# 		angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) #- Math.PI / 6 + Math.PI / 4
				# 		distr: 0.5
				# 	})
				1:
					x: spacingLeft
					# y: 0
					# x: Utils.onLine({
					# 	on: [ contours[2].nodes[0].point, contours[1].nodes[0].point ]
					# 	y: 0
					# })
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						# width: ( 125 / 115 ) * thickness * contrast
						width: Math.min(
							thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) ) * contrast,
							thickness + 75
						)
						angle: 0 + 'deg'
						distr: 1 - 0.5 * contrast
					})
		# 2:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].x
		# 			# y: xHeight
		# 			# x: Utils.onLine({
		# 			# 	on: [ contours[1].nodes[0].point, contours[2].nodes[1].point ]
		# 			# 	y: xHeight
		# 			# })
		# 			y: xHeight
		# 			dirOut: 0 + 'deg'
		# 			typeOut: 'line'
		# 			expand: Object({
		# 				width: ( 125 / 115 ) * thickness * contrast
		# 				angle: 0 + 'deg'
		# 				distr: 0.5 * contrast
		# 			})
		# 		1:
		# 			###########################
		# 			# TODO: thickness issues
		# 			###########################
		# 			x: Utils.onLine({
		# 				on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
		# 				y: ( (260 + ( 50 / 115 ) * thickness) / 520 ) * xHeight
		# 				})
		# 			y: ( (260 + ( 50 / 115 ) * thickness) / 520 ) * xHeight
		# 			###########################
		# 			dirOut: 0 + 'deg'
		# 			typeOut: 'line'
		# 			expand: Object({
		# 				width: ( 104 / 115 ) * thickness * contrast * contrastExtremity
		# 				angle: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) #- Math.PI / 6 + Math.PI / 4
		# 				distr: 0.5
		# 			})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					directionY: -1
					baseRight: contours[0].nodes[0].expandedTo[1].point
					baseLeft: contours[0].nodes[0].expandedTo[0].point
		1:
			base: 'serif'
			parentAnchors:
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
					directionY: -1
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve
				2:
					anchorLine: 0
					# leftWidth: 70
					# rightWidth: 30
					# leftCurve: 1.2
					baseRight: contours[1].nodes[1].expandedTo[1].point
					baseLeft: contours[1].nodes[1].expandedTo[0].point
					# anchor_0: contours[1].nodes[0].expandedTo[1].x
					# anchor_1: contours[1].nodes[0].expandedTo[0].x
					angle: Utils.lineAngle( contours[1].nodes[0].point ,contours[1].nodes[1].point )
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve
				2:
					anchorLine: 0
					# leftWidth: 70
					# rightWidth: 30
					# leftCurve: 1.2
					baseRight: contours[0].nodes[1].expandedTo[1].point
					baseLeft: contours[0].nodes[1].expandedTo[0].point
					# anchor_0: contours[0].nodes[0].expandedTo[1].x
					# anchor_1: contours[0].nodes[0].expandedTo[0].x
					angle: Utils.lineAngle( contours[0].nodes[0].point ,contours[0].nodes[1].point )
