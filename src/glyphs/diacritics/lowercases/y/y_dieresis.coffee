exports.glyphs['y_dieresis'] =
	unicode: 'ÿ'
	glyphName: "ydieresis"
	characterName: "LATIN SMALL LETTER Y WITH DIAERESIS"
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 10 * spacing + (32) + serifWidth / 2
		spacingRight: 10 * spacing + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 45
					y: Math.min(
						( 200 / 250 ) * descender,
						contours[0].nodes[2].expandedTo[1].y - ( 100 / 115 ) * thickness - 15
					)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x + 50
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				2:
					x: 275 - (21)
					y: ( ( 85 / 115 ) * thickness / 250 ) * descender + (12)
					dirIn: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[2].point )
					tensionIn: 1.3
					typeOut: 'line'
					expand: Object({
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle: 180 - 26 + 'deg'
						distr: 0.25
					})
				3:
					x: 480 - (33)
					y: xHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: ( 130 / 115 ) * thickness * contrast
						angle: 180 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft - serifWidth / 2
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( 15 / 115 ) * thickness
					y: contours[0].nodes[2].expandedTo[1].y - ( 10 / 115 ) * thickness
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 180 / 115 ) * thickness
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[1].point ) + Math.PI
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					baseLeft: contours[0].nodes[3].expandedTo[1].point
					baseRight: contours[0].nodes[3].expandedTo[0].point
					angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					# leftWidth: 0.9
					# rightWidth: 0.9
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					baseRight: contours[1].nodes[0].expandedTo[1].point
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) / 2 - 95 / 2 - minThickness / 2
					y: xHeight + diacriticHeight
		3:
			base: 'dot'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) / 2 + 95 / 2 + minThickness / 2
					y: xHeight + diacriticHeight
