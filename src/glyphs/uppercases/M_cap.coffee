exports.glyphs['M_cap'] =
	unicode: 'M'
	glyphName: 'M'
	characterName: 'LATIN CAPITAL LETTER M'
	ot:
		advanceWidth: contours[3].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX', slant + 'deg']
	)
	parameters:
		spacingLeft: 50 * spacing + 85 + (34) + serifWidth / 2
		spacingRight: 50 * spacing + 85 + serifWidth / 2
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
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + ( contours[3].nodes[1].expandedTo[0].x - contours[0].nodes[1].expandedTo[1].x ) / 2
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.4 * contrast
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 120 / 115 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: contours[3].nodes[1].expandedTo[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.65
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + 275 + 200 * width + (101)
					y: 0 + Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[3].nodes[0].x
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 130 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
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
					baseRight: contours[0].nodes[1].expandedTo[1].point
					directionY: -1
					right: false
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[3].nodes[0].expandedTo[1].x
					y: contours[3].nodes[0].y + serifHeight + serifCurve
				1:
					x: contours[3].nodes[0].expandedTo[0].x
					y: contours[3].nodes[0].y + serifHeight + serifCurve
				2:
					anchorLine: 0
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[3].nodes[1].expandedTo[1].x
					y: contours[3].nodes[1].y - serifHeight - serifCurve
				1:
					x: contours[3].nodes[1].expandedTo[0].x
					y: contours[3].nodes[1].y - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					baseLeft: contours[3].nodes[1].expandedTo[0].point
					directionY: -1
					left: false
