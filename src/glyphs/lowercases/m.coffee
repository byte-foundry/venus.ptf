exports.glyphs['m'] =
	unicode: 'm'
	glyphName: 'm'
	characterName: 'LATIN SMALL LETTER M'
	ot:
		advanceWidth: contours[2].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 70 * spacing + (29) + serifWidth / 2
		spacingRight: 65 * spacing + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			junction: Utils.pointOnCurve(
				contours[1].nodes[1].expandedTo[0],
				contours[1].nodes[2].expandedTo[0],
				Math.min(
					( 100 / 115 ) * thickness * contrastExtremity,
					100
				),
				true
			)
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
					y: xHeight - serifHeight - serifCurve
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
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 150 - ( 50 / 115 ) * thickness
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 30 / 90 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: Math.min(
						contours[1].nodes[0].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].expandedTo[1].x ) * 0.55,
						contours[1].nodes[2].expandedTo[0].x
					)
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1 * breakPath
					expand: Object({
						width: ( 113 / 115 ) * thickness * contrast
						angle: 180 - 113 + 'deg'
						distr: 1
					})
				2:
					x: Math.max(
						contours[0].nodes[0].expandedTo[1].x + 100 + 200 * width,
						285 + 200 * width
					) - (64)
					y: xHeight - 205
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[1].x
					y: xHeight - 150 - ( 50 / 115 ) * thickness
					dirOut: 90 + 'deg'
					expand: Object({
						width: ( 30 / 90 ) * thickness * contrast * contrastExtremity
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: Math.min(
						contours[2].nodes[0].expandedTo[1].x + ( contours[2].nodes[2].expandedTo[1].x - contours[2].nodes[0].expandedTo[1].x ) * 0.55,
						contours[2].nodes[2].expandedTo[0].x
					)
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1 * breakPath
					expand: Object({
						width: ( 113 / 115 ) * thickness * contrast
						angle: 180 - 113 + 'deg'
						distr: 1
					})
				2:
					x: contours[1].nodes[3].expandedTo[1].x + 95 + 200 * width - (29)
					y: xHeight - 205
					dirOut: 0 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.1
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[2].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness
						angle: 0 + 'deg'
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
					anchorLine: xHeight
					directionY: -1
					right: false
			transformOrigin: Array( contours[0].nodes[1].expandedTo[1].x, contours[0].nodes[1].expandedTo[1].y )
			transforms: Array( [ 'skewY', spurHeight * (15) + 'deg' ] )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].y
				1:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].y
				2:
					anchorLine: 0
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[3].expandedTo[0].x
					y: contours[2].nodes[3].y
				1:
					x: contours[2].nodes[3].expandedTo[1].x
					y: contours[2].nodes[3].y
				2:
					anchorLine: 0
