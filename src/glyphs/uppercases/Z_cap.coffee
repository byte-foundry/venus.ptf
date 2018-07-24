exports.glyphs['Z_cap'] =
	unicode: 'Z'
	glyphName: 'Z'
	characterName: 'LATIN CAPITAL LETTER Z'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 45 + serifWidth / 2 * serifRotate
		spacingRight: 50 * spacing + 45 + serifWidth / 3 * serifRotate
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x + 200 * width + 365
					y: capHeight
					typeOut: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[0].x + 15 + Math.max( 0, serifHeight * serifArc ) + ( Math.tan( (15 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: capHeight
					typeIn: 'line'
					expand:
						width: ( ( 110 / 115 ) * thickness * opticThickness * contrast * contrastExtremity ) / Math.cos( Math.PI / 2 + contours[0].nodes[1].expand.angle )
						angle: ( - 90 ) / 180 * Math.PI - (10 * serifRotate) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft
					y: 0
					typeOut: 'line'
					expand:
						width: ( 110 / 115 ) * thickness * opticThickness * contrast
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x - Math.max( 0, serifHeight * serifArc ) - ( Math.tan( (10 * serifRotate) / 180 * Math.PI ) * ( thickness / 2 ) )
					y: 0
					typeIn: 'line'
					expand:
						width: ( ( 110 / 115 ) * thickness * opticThickness * contrast ) / Math.cos( - Math.PI / 2 + contours[1].nodes[1].expand.angle )
						angle: Math.PI + Math.PI / 2 - (10 * serifRotate) / 180 * Math.PI
						distr: 0
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 125 / 115 ) * thickness * opticThickness + ( 24 / 115 ) * thickness * opticThickness * width
						angle: Utils.lineAngle({x: contours[0].nodes[1].expandedTo[0].x, y: contours[0].nodes[1].expandedTo[0].y}, {x: contours[0].nodes[0].expandedTo[1].x, y: contours[0].nodes[0].expandedTo[1].y} )
						distr: 1
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeIn: 'line'
					expand:
						width: ( 125 / 115 ) * thickness * opticThickness + ( 24 / 115 ) * thickness * opticThickness * width
						angle: Utils.lineAngle({x: contours[1].nodes[0].expandedTo[1].x, y: contours[1].nodes[0].expandedTo[1].y}, {x: contours[1].nodes[1].expandedTo[0].x, y: contours[1].nodes[1].expandedTo[0].y} )
						distr: 0
	components:
		0:
			base: ['serif-horizontal', 'none']
			id: 'topleftbottom'
			class: 'topInsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[1]
					noneAnchor: contours[0].nodes[1].expandedTo[1]
					opposite: contours[0].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[0].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
		1:
			base: ['none', 'serif-horizontal']
			id: 'toplefttop'
			class: 'topOutsideHoriz'
			parentAnchors:
				0:
					base: contours[0].nodes[1].expandedTo[0]
					noneAnchor: contours[0].nodes[1].expandedTo[0]
					opposite: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'scaleX', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
			parameters:
				serifWidth: serifWidth / 3
		2:
			base: ['serif-horizontal', 'none']
			id: 'bottomrighttop'
			class: 'bottomInsideHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ]
			)
		3:
			base: ['none', 'serif-horizontal']
			id: 'bottomrightbottom'
			class: 'bottomOutsideHoriz'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[1].expandedTo[0]
			transforms: Array(
				[ 'skewX',( 10 * serifRotate ) / 180 * Math.PI ],
			)
			parameters:
				serifWidth: serifWidth / 3
