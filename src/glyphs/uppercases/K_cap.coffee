exports.glyphs['K_cap'] =
	unicode: 'K'
	glyphName: 'K'
	characterName: 'LATIN CAPITAL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34)
		spacingRight: 50 * spacing + 10
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - ( 108 / 115 ) * thickness * 0.25
					y: ( 270 / 750 ) * capHeight + (5)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 8 / 115 ) * thickness * opticThickness * contrast * contrastExtremity * Math.sqrt( width ) + thickness * contrast * contrastExtremity * opticThickness
						angle: 180 + 166 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[2].nodes[0].expandedTo[1].x - 25 - (36)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 50 / 115 ) * thickness * opticThickness * contrast * Math.sqrt( width ) + thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 265 + 200 * width - (45)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 45 / 115 ) * thickness * opticThickness * Math.sqrt( width ) + thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Utils.onLine({
						y: ( 490 / 750 ) * capHeight - (32)
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: ( 490 / 750 ) * capHeight - (32)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ) + Math.PI
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y + serifHeight + serifCurve
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y + serifHeight + serifCurve
				2:
					anchorLine: 0
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y - serifHeight - serifCurve
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve
				2:
					anchorLine: 0
					# leftWidth: 70
					# rightWidth: 100
					# rightCurve: 0.0
					# leftCurve: 0.5
					baseRight: contours[2].nodes[0].expandedTo[1].point
					baseLeft: contours[2].nodes[0].expandedTo[0].point
					anchor_0: contours[2].nodes[0].expandedTo[1].x
					anchor_1: contours[2].nodes[0].expandedTo[0].x
					angle: Utils.lineAngle( contours[2].nodes[0].point ,contours[2].nodes[1].point )
					left: false
			# parentParameters:
			# 	serifCurve: serifCurve * 20
		3:
			base: 'serif'
			parentAnchors:
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					# leftWidth: 70
					# rightWidth: 100
					# rightCurve: 0.0
					# leftCurve: 0.5
					baseRight: contours[1].nodes[1].expandedTo[1].point
					baseLeft: contours[1].nodes[1].expandedTo[0].point
					anchor_0: contours[1].nodes[1].expandedTo[1].x
					anchor_1: contours[1].nodes[1].expandedTo[0].x
					angle: Utils.lineAngle( contours[1].nodes[0].point ,contours[1].nodes[1].point )
					directionY: -1
			# parentParameters:
			# 	serifCurve: serifCurve * 20
