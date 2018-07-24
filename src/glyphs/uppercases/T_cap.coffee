exports.glyphs['T_cap'] =
	unicode: 'T'
	glyphName: 'T'
	characterName: 'LATIN CAPITAL LETTER T'
	ot:
		advanceWidth: contours[0].nodes[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10
		spacingRight: 50 * spacing + 10 +
			( Math.tan( ( (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].x
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + Math.max( 0, serifHeight * serifArc ) +
						( Math.tan( ( (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) )
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity ) / Math.cos( Math.PI / 2 + contours[0].nodes[0].expand.angle )
						angle: ( - 90 ) / 180 * Math.PI - (10 * serifRotate) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[0].x + 375 + 200 * width - 2 * Math.max( 0, serifHeight * serifArc ) +
						( Math.tan( (- (15 * 2) * serifRotate ) / 180 * Math.PI ) * ( ( 50 / 80 ) * thickness * opticThickness * contrast * 0.5 ) )
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity ) / Math.cos( Math.PI / 2 + contours[0].nodes[1].expand.angle )
						angle: ( - 90 ) / 180 * Math.PI + (10 * serifRotate) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].x
					y: Math.max( 0, serifHeight * serifArc )
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: capHeight
					dirOut: 0
					typeOut: 'line'
					expand:
						width: ( 135 / 115 ) * thickness * opticThickness
						angle: 0
						distr: 0.5
	components:
		0:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			class: 'lowerLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
		1:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			class: 'lowerRightStump'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
		2:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
		3:
			base: ['none', 'serif-horizontal']
			id: 'toplefttop'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
		4:
			base: ['none', 'serif-horizontal', ]
			id: 'toprighttop'
			class: 'topOutsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX',( -10 * serifRotate ) / 180 * Math.PI ]
			)
		5:
			base: ['serif-horizontal', 'none']
			id: 'topright'
			class: 'topInsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'skewX',( - 10 * serifRotate ) / 180 * Math.PI ],
			)
