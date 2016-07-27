exports.glyphs['W_cap'] =
	unicode: 'W'
	glyphName: 'W'
	characterName: 'LATIN CAPITAL LETTER W'
	ot:
		advanceWidth: contours[3].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + (36) + serifWidth
		spacingRight: 50 * spacing + 10 + serifWidth
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2 - ( 15 / 115 ) * thickness * contrast
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) / 2
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[3].nodes[1].expandedTo[0].x - contours[2].nodes[0].expandedTo[0].x ) / 2 + ( 10 / 115 ) * thickness * contrast
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 465 + 200 * width - (36)
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					directionY: -1
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					baseRight: contours[0].nodes[0].expandedTo[1].point
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[3].nodes[1].expandedTo[0].point, contours[3].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[3].nodes[1].expandedTo[1].point, contours[3].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					angle: Utils.lineAngle( contours[3].nodes[1].expandedTo[0].point, contours[3].nodes[0].expandedTo[0].point )
					directionY: -1
					baseLeft: contours[3].nodes[1].expandedTo[1].point
					baseRight: contours[3].nodes[1].expandedTo[0].point
		# 2:
		# 	base: 'serif'
		# 	parentAnchors:
		# 		0:
		# 			x: Utils.onLine({
		# 				y: capHeight - serifHeight - serifCurve
		# 				on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
		# 			})
		# 			y: capHeight - serifHeight - serifCurve
		# 		1:
		# 			x: Utils.onLine({
		# 				y: capHeight - serifHeight - serifCurve
		# 				on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
		# 			})
		# 			y: capHeight - serifHeight - serifCurve
		# 		2:
		# 			anchorLine: capHeight
		# 			# leftWidth: 0.9
		# 			# rightWidth: 0.9
		# 			angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
		# 			directionY: -1
