exports.glyphs['l_cap_caron'] =
	unicode: 'Ľ'
	glyphName: "Lcaron"
	characterName: "LATIN CAPITAL LETTER L WITH CARON"
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 85 * spacing + (67/115) * thickness + serifWidth / 2
		spacingRight: 30 * spacing + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 100 + 225 * width
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
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
					right: false
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
					anchorLine: capHeight
					directionY: -1
		2:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve
					y: contours[1].nodes[1].expandedTo[1].y
				1:
					x: contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					left: false
					baseLeft: contours[1].nodes[1].expandedTo[0].point
					# directionX: 1
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (20) + 'deg' ] )
		3:
			base: 'caronSlovak'
			parentAnchors:
				0:
					x: Math.min(
						contours[1].nodes[0].x + ( contours[1].nodes[1].x - contours[1].nodes[0].x ) / 2 + serifWidth,
						contours[1].nodes[1].x - thickness * ( 125 / 115 ) / 2
					)
					y: capHeight + overshoot
