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
			base: 'serif-oblique-obtuse'
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: 'serif-oblique-acute'
			id: 'topright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1].point
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: 'serif-oblique-acute'
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0].point
		3:
			base: 'serif-oblique-obtuse'
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1].point
					opposite: contours[0].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1].point
					scaleX: -1
					reversed: true
		4:
			base: 'serif-oblique-obtuse'
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0].point
					opposite: contours[1].nodes[1].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0].point
		5:
			base: 'serif-oblique-acute'
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1].point
					opposite: contours[1].nodes[1].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1].point
					scaleX: -1
					reversed: true
		6:
			base: 'serif-oblique-acute'
			id: 'topleft2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0].point
					opposite: contours[1].nodes[0].expandedTo[1].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0].point
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: 'serif-oblique-obtuse'
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1].point
					opposite: contours[1].nodes[0].expandedTo[0].point
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1].point
			transformOrigin: contours[1].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
