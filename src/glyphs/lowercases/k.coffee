exports.glyphs['k'] =
	unicode: 'k'
	glyphName: 'k'
	characterName: 'LATIN SMALL LETTER K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (29)
		spacingRight: 50 * spacing + 10
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
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - serifHeight - serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x - ( 108 / 115 ) * thickness * 0.25
					y: ( 195 / 520 ) * xHeight + (5)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 140 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 + 90 + 'deg'
						distr: 0.75
					})
				1:
					x: Math.max(
						contours[2].nodes[0].expandedTo[1].x - 15 - (35),
						contours[0].nodes[0].expandedTo[1].x + 50 + 0.75 * (( 140 / 115 ) * thickness * contrast + (width - 1) * ( 60 / 115 ) * thickness)
					)
					y: xHeight
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 140 / 115 ) * thickness * contrast + (width - 1) * ( 60 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 177 + 200 * width + (98)
					x: Math.max(
						contours[0].nodes[1].expandedTo[0].x + 200 * width + 107 + (98),
						contours[0].nodes[1].expandedTo[1].x + 0.75 * (( 138 / 115 ) * thickness + (width - 1) * ( 20 / 115 ) * thickness) + 10
					)
					y: 0
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 138 / 115 ) * thickness + (width - 1) * ( 20 / 115 ) * thickness # TODO: apply this hack on each oblic
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: Utils.onLine({
						y: ( 325 / 520 ) * xHeight + (5)
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: ( 325 / 520 ) * xHeight + (5)
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 127 / 115 ) * thickness + (width - 1) * ( 4 / 115 ) * thickness
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: ascenderHeight
					directionY: -1
					right: false
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
					angle: Utils.lineAngle( contours[2].nodes[0].expandedTo[1].point ,contours[2].nodes[1].expandedTo[1].point )
					left: false
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					baseLeft: contours[1].nodes[1].expandedTo[0].point
					baseRight: contours[1].nodes[1].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
					directionY: -1
