exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 10 * spacing + serifWidth / 2 * serifRotate
		spacingRight: 10 * spacing + serifWidth / 2 * serifRotate
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].x
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
						width: ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 300 + 285 * width
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				0:
					x: contours[1].nodes[1].x
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: 0
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					y: contours[0].nodes[1].expandedTo[0].y
				1:
					x: contours[0].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					y: contours[0].nodes[1].expandedTo[1].y
				2:
					anchorLine: contours[0].nodes[1].expandedTo[0].x
					right: false
					# leftWidth: 60
					# leftCurve: 1.2
					baseRight: contours[0].nodes[1].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.75
			# 	midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-15) + 'deg' ] )
		2:
			base: 'serif-v'
			parentAnchors:
				1:
					x: contours[0].nodes[0].expandedTo[1].x + serifHeight + serifCurve
					y: contours[0].nodes[0].expandedTo[1].y
				0:
					x: contours[0].nodes[0].expandedTo[1].x + serifHeight + serifCurve
					y: contours[0].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[0].nodes[0].expandedTo[0].x
					directionX: -1
					right: false
					# leftWidth: 60
					# leftCurve: 1.2
					baseRight: contours[0].nodes[0].expandedTo[0].point
			# parentParameters:
			# 	serifMedian: serifMedian * 0.75
			# 	midWidth: midWidth * 0.98
			transformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (15) + 'deg' ] )
