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
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0].point
					noneAnchor: contours[0].nodes[0].expandedTo[0].point
					opposite: contours[0].nodes[0].expandedTo[1].point
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1].point
					noneAnchor: contours[0].nodes[0].expandedTo[1].point
					opposite: contours[0].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0].point
					noneAnchor: contours[0].nodes[1].expandedTo[0].point
					opposite: contours[0].nodes[1].expandedTo[1].point
					reversed: true
			transformOrigin: contours[0].nodes[1].point
			transforms: Array(
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-vertical', 'none']
			id: 'bottomleft2'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[0].point
					noneAnchor: contours[3].nodes[0].expandedTo[0].point
					opposite: contours[3].nodes[0].expandedTo[1].point
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomright2'
			parentAnchors:
				0:
					base: contours[3].nodes[0].expandedTo[1].point
					noneAnchor: contours[3].nodes[0].expandedTo[1].point
					opposite: contours[3].nodes[0].expandedTo[0].point
					reversed: true
			transformOrigin: contours[3].nodes[0].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		5:
			base: ['serif-vertical', 'none']
			id: 'topright2'
			parentAnchors:
				0:
					base: contours[3].nodes[1].expandedTo[1].point
					noneAnchor: contours[3].nodes[1].expandedTo[1].point
					opposite: contours[3].nodes[1].expandedTo[0].point
			transformOrigin: contours[3].nodes[1].expandedTo[1].point
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
