exports.glyphs['n_cap_acute'] =
	unicode: 'Ń'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + spacingRight
	parameters:
		spacingLeft: 85 * spacing + (34) + serifWidth / 2
		spacingRight: 85 * spacing + serifWidth / 2
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
				1:
					x: spacingLeft
					y: 0 + serifHeight + serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.25
					})
				0:
					x: contours[0].nodes[1].x
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 150 / 115 ) * thickness * opticThickness + ( 20 * width - 20 )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[0].expandedTo[1].x - ( 5 / 115 ) * thickness
					x: contours[0].nodes[0].expandedTo[1].x + 180 + 265 * width - (34) * contrast
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 150 / 115 ) * thickness * opticThickness + ( 20 * width - 20 )
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[1].nodes[1].expandedTo[1].x + ( 5 / 115 ) * thickness
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness * contrast * contrastExtremity
						angle: 0 + 'deg'
						distr: 0.75
					})
				0:
					x: contours[2].nodes[1].x
					y: capHeight - serifHeight - serifCurve
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: ( 135 / 115 ) * thickness * opticThickness * contrast
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: 0
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: capHeight
					directionY: -1
					right: false
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].y
				1:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].y
				2:
					anchorLine: capHeight
					directionY: -1
		3:
			base: 'acute'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[2].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) / 2
					y: capHeight + diacriticHeight
