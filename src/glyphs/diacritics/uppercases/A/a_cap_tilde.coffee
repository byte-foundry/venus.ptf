exports.glyphs['a_cap_tilde'] =
	unicode: 'Ã'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 10 * spacing + (36) + serifWidth / 2
		spacingRight: 10 * spacing + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	# anchors:
	# 	diacriticX: ( contours[0].nodes[3].expandedTo[0].x - spacingLeft ) / 2
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x:
						contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[3].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2 -
						( 142 / 115 ) * thickness / 2
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 137 / 115 ) * thickness * contrast * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				2:
					x:
						contours[0].nodes[1].expandedTo[0].x +
						( 137 / 115 ) * thickness / 2 +
						( 4 / 115 ) * thickness
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 141 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.5
					})
				3:
					x: 320 + 250 * width + (109)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 145 / 115 ) * thickness * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						on: [ contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[3].expandedTo[1].point ]
						# on: [ contours[0].nodes[2].point, contours[0].nodes[3].point ]
						y: ( 260 / 750 ) * capHeight * crossbar
						})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[1].point )
						# angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: Utils.onLine({
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
						# on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
						y: ( 260 / 750 ) * capHeight * crossbar
						})
					y: ( 260 / 750 ) * capHeight * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point )
						# angle: 90 + 'deg'
						distr: 1
					})
	components:
		0:
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
					leftWidth: 50
					rightWidth: 50
					# leftCurve: 1.2
					baseRight: contours[0].nodes[0].expandedTo[1].point
					baseLeft: contours[0].nodes[0].expandedTo[0].point
					anchor_0: contours[0].nodes[0].expandedTo[1].x
					anchor_1: contours[0].nodes[0].expandedTo[0].x
					angle: Utils.lineAngle( contours[0].nodes[0].point ,contours[0].nodes[1].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[3].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[3].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve
				2:
					anchorLine: 0
					leftWidth: 50
					rightWidth: 50
					# rightCurve: 0.0
					# leftCurve: 0.5
					baseRight: contours[0].nodes[3].expandedTo[0].point
					baseLeft: contours[0].nodes[3].expandedTo[1].point
					anchor_0: contours[0].nodes[3].expandedTo[0].x
					anchor_1: contours[0].nodes[3].expandedTo[1].x
					angle: Utils.lineAngle( contours[0].nodes[3].point ,contours[0].nodes[2].point )
			# parentParameters:
			# 	serifCurve: serifCurve * 20
		2:
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
					# leftWidth: 70
					# rightWidth: 30
					# leftCurve: 1.2
					right: false
					directionY: -1
					baseRight: contours[0].nodes[1].expandedTo[1].point
					baseLeft: contours[0].nodes[1].expandedTo[0].point
					anchor_0: contours[0].nodes[1].expandedTo[1].x
					anchor_1: contours[0].nodes[1].expandedTo[0].x
					angle: Utils.lineAngle( contours[0].nodes[0].point ,contours[0].nodes[1].point )
		3:
			base: 'tilde'
			parentAnchors:
				0:
					x: contours[0].nodes[2].x
					y: capHeight + diacriticHeight
