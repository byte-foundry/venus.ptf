exports.glyphs['X_cap'] =
	unicode: 'X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 15 * spacing + (47)
		spacingRight: 15 * spacing
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
					x: 42 + (37)
					y: capHeight - serifArc * serifHeight
					## TODO: Apply serifArc all over oblic glyphs / @yannnick
					# y: capHeight - serifArc * serifHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( ( 130 + 15 * width ) / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 200 + 267 * width + (39)
					y: 0 + serifArc * serifHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( ( 130 + 15 * width ) / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.47 + ( 0.03 / 115 ) * thickness + 8
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.47 + ( 0.03 / 115 ) * thickness + 8
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: ( Utils.lineAngle( contours[1].nodes[0].point, contours[1].nodes[1].point ) + Math.PI / 2 +
							Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) ) / 2
						distr: 0.5
					})
				1:
					x: spacingLeft
					y: 0 + serifArc * serifHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( ( 130 + 15 * width ) / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 - ( 0.02 / 115 ) * thickness - 4
					y: Utils.onLine({
						x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5 - ( 0.02 / 115 ) * thickness - 4
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: ( Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point ) + Math.PI / 2 +
							Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point ) ) / 2
						distr: 0.5
					})
				0:
					x: contours[0].nodes[1].x
					y: capHeight - serifArc * serifHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( ( 130 + 15 * width ) / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
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
					baseRight: contours[0].nodes[0].expandedTo[1].point
					baseLeft: contours[0].nodes[0].expandedTo[0].point
		1:
			base: 'serif'
			parentAnchors:
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
					directionY: -1
					baseRight: contours[2].nodes[0].expandedTo[1].point
					baseLeft: contours[2].nodes[0].expandedTo[0].point
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
