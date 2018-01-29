exports.glyphs['x'] =
	unicode: 'x'
	glyphName: 'x'
	characterName: 'LATIN SMALL LETTER X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
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
					typeOut: 'line'
					expand:
						# width: ( 140 / 115 ) * thickness
						width: Math.min(
							thickness / ( Math.cos( (Math.PI / 2) + Utils.lineAngle( {x: contours[0].nodes[0].x, y:contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y} ) ) ),
							thickness + 75
						)
						angle: 0
						distr: 0.25
				1:
					x: Math.max(
						(contours[0].nodes[0].x - 0.25 * (( 140 / 115 ) * thickness)) + 200 * width + 160 + (35),
						(contours[0].nodes[0].x + 0.75 * (( 140 / 115 ) * thickness)) + thickness + 10
					)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: Math.min(
							thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( {x: contours[0].nodes[0].x, y:contours[0].nodes[0].y},{x: contours[0].nodes[1].x, y: contours[0].nodes[1].y}) ),
							thickness + 75
						)
						angle: 0
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					# y: xHeight
					# x: Utils.onLine({
					# 	on: [ contours[1].nodes[0], contours[2].nodes[1] ]
					# 	y: xHeight
					# })
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						# width: ( 125 / 115 ) * thickness * contrast
						width: Math.min(
							thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( {x: contours[1].nodes[0].x, y:contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y:contours[1].nodes[1].y} ) ) * contrast,
							thickness + 75
						)
						angle: 0
						distr: 0.5 * contrast
				# 0:
				# 	###########################
				# 	# TODO: thickness issues
				# 	###########################
				# 	x: Utils.onLine({
				# 		on: [ contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0] ]
				# 		y: ( (260 - ( 50 / 115 ) * thickness) / 520 ) * xHeight
				# 	})
				# 	y: ( (260 - ( 50 / 115 ) * thickness) / 520 ) * xHeight
				# 	###########################
				# 	dirOut: 0
				# 	typeOut: 'line'
				# 	expand:
				# 		width: ( 104 / 115 ) * thickness * contrast * contrastExtremity
				# 		angle: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] ) #- Math.PI / 6 + Math.PI / 4
				# 		distr: 0.5
				1:
					x: spacingLeft
					# y: 0
					# x: Utils.onLine({
					# 	on: [ contours[2].nodes[0], contours[1].nodes[0] ]
					# 	y: 0
					# })
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						# width: ( 125 / 115 ) * thickness * contrast
						width: Math.min(
							thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle( {x: contours[1].nodes[0].x, y:contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y:contours[1].nodes[1].y} ) ) * contrast,
							thickness + 75
						)
						angle: 0
						distr: 1 - 0.5 * contrast
		# 2:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].x
		# 			# y: xHeight
		# 			# x: Utils.onLine({
		# 			# 	on: [ contours[1].nodes[0], contours[2].nodes[1] ]
		# 			# 	y: xHeight
		# 			# })
		# 			y: xHeight
		# 			dirOut: 0
		# 			typeOut: 'line'
		# 			expand:
		# 				width: ( 125 / 115 ) * thickness * contrast
		# 				angle: 0
		# 				distr: 0.5 * contrast
		# 		1:
		# 			###########################
		# 			# TODO: thickness issues
		# 			###########################
		# 			x: Utils.onLine({
		# 				on: [ contours[0].nodes[0].expandedTo[1], contours[0].nodes[1].expandedTo[1] ]
		# 				y: ( (260 + ( 50 / 115 ) * thickness) / 520 ) * xHeight
		# 				})
		# 			y: ( (260 + ( 50 / 115 ) * thickness) / 520 ) * xHeight
		# 			###########################
		# 			dirOut: 0
		# 			typeOut: 'line'
		# 			expand:
		# 				width: ( 104 / 115 ) * thickness * contrast * contrastExtremity
		# 				angle: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] ) #- Math.PI / 6 + Math.PI / 4
		# 				distr: 0.5
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'obtuseLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			class: 'acuteLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[0]
		3:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[0].expandedTo[1]
					scaleX: -1
					reversed: true
		4:
			base: ['serif-oblique-obtuse', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[0]
		5:
			base: ['serif-oblique-acute', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[0].expandedTo[1]
					scaleX: -1
					reversed: true
		6:
			base: ['serif-oblique-acute', 'none']
			id: 'topleft2'
			class: 'acuteRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		7:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topright2'
			class: 'obtuseRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
