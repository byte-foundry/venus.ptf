exports.glyphs['Y_cap'] =
	unicode: 'Y'
	glyphName: 'Y'
	characterName: 'LATIN CAPITAL LETTER Y'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + serifWidth / 2
		spacingRight: 50 * spacing + 10 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	anchors:
		0:
			x: contours[0].nodes[0].expandedTo[0].x + ( contours[1].nodes[0].expandedTo[1].x - contours[0].nodes[0].expandedTo[0].x ) / 2
			y: capHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (39)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y} ) )
						angle: 0
						distr: 0.25
				1:
					x: contours[2].nodes[1].expandedTo[0].x
					y: ( 330 / 520 ) * xHeight
					typeIn: 'line'
					expand:
						width: ( 115 / defaultThickness ) * thickness * opticThickness
						angle: Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y} ) + Math.PI / 2
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + 200 * width + 375 - (39)
					y: capHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: thickness / Math.cos( (Math.PI / 2) + Utils.lineAngle({x: contours[0].nodes[0].x, y: contours[0].nodes[0].y}, {x: contours[0].nodes[1].x, y: contours[0].nodes[1].y} ) ) * contrast
						angle: 0
						distr: 0.75
				1:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y + ( contours[0].nodes[1].expandedTo[0].y - contours[2].nodes[0].expandedTo[1].y ) * contrast
					typeIn: 'line'
					expand:
						width: ( 115 / defaultThickness ) * thickness * contrast * opticThickness
						angle: Utils.lineAngle({x: contours[1].nodes[0].x, y: contours[1].nodes[0].y}, {x: contours[1].nodes[1].x, y: contours[1].nodes[1].y} ) + Math.PI / 2
						distr: 1
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[1].nodes[0].x - contours[0].nodes[0].x ) / 2
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand:
						width: ( 135 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.5
				1:
					x: contours[2].nodes[0].x
					y: 0 + Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 135 / defaultThickness ) * thickness * opticThickness
						angle: 0
						distr: 0.5
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'obtuseLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[0]
					noneAnchor: contours[0].nodes[0].expandedTo[0]
					opposite: contours[0].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			class: 'acuteLeftSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[0].expandedTo[1]
					noneAnchor: contours[0].nodes[0].expandedTo[1]
					opposite: contours[0].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[1].expandedTo[1]
			transformOrigin: contours[0].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			class: 'obtuseRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[1]
					noneAnchor: contours[1].nodes[0].expandedTo[1]
					opposite: contours[1].nodes[0].expandedTo[0]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[1]
			transformOrigin: contours[1].nodes[0].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		3:
			base: ['serif-oblique-acute', 'none']
			id: 'topright2'
			class: 'acuteRightSerif'
			parentAnchors:
				0:
					base: contours[1].nodes[0].expandedTo[0]
					noneAnchor: contours[1].nodes[0].expandedTo[0]
					opposite: contours[1].nodes[0].expandedTo[1]
					obliqueEndPoint: contours[1].nodes[1].expandedTo[0]
					scaleX: -1
					reversed: true
			transformOrigin: contours[1].nodes[0].expandedTo[0]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
		4:
			base: ['serif-vertical', 'none']
			id: 'bottomleft'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[0]
					noneAnchor: contours[2].nodes[1].expandedTo[0]
					opposite: contours[2].nodes[1].expandedTo[1]
		5:
			base: ['serif-vertical', 'none']
			id: 'bottomright'
			parentAnchors:
				0:
					base: contours[2].nodes[1].expandedTo[1]
					noneAnchor: contours[2].nodes[1].expandedTo[1]
					opposite: contours[2].nodes[1].expandedTo[0]
					reversed: true
			transformOrigin: contours[2].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ]
			)
