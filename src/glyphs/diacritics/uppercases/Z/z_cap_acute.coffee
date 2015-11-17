exports.glyphs['z_cap_acute'] =
	unicode: 'Ź'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	parameters:
		spacingLeft: 45 * spacing + serifWidth / 2 * serifRotate
		spacingRight: 45 * spacing + serifWidth / 3 * serifRotate
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
					x: 400 + 210 * width
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 60
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness + ( 24 / 115 ) * thickness * opticThickness * width
						angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[1].point )
						distr: 1
					})
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 125 / 115 ) * thickness * opticThickness + ( 24 / 115 ) * thickness * opticThickness * width
						angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[0].point )
						distr: 0
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve
					y: contours[1].nodes[1].expandedTo[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					left: false
					baseLeft: contours[1].nodes[1].expandedTo[0].point
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * 5 + 'deg' ] )
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x + serifHeight + serifCurve
					y: contours[0].nodes[1].expandedTo[0].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve
					y: contours[0].nodes[1].expandedTo[1].y
				2:
					anchorLine: contours[0].nodes[1].expandedTo[0].x
					right: false
					baseRight: contours[0].nodes[1].expandedTo[0].point
					directionX: -1
			transformOrigin: Array( contours[0].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * 10 + 'deg' ] )
		2:
			base: 'acute'
			parentAnchors:
				0:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: capHeight + diacriticHeight
