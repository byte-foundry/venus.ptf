# TODO: thickness
exports.glyphs['y'] =
	unicode: 'y'
	glyphName: 'y'
	characterName: 'LATIN SMALL LETTER Y'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[0].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 10 + serifWidth / 2
		spacingRight: 50 * spacing + 10 + serifWidth / 2
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	anchors:
		0:
			x: contours[1].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) / 2
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x + 35
					y: Math.min(
						( 200 / 250 ) * descender,
						contours[0].nodes[2].expandedTo[1].y - ( 100 / defaultThickness ) * thickness - 15
					)
					typeOut: 'line'
					expand:
						width: ( 100 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
				1:
					x: contours[0].nodes[0].x + 50
					y: contours[0].nodes[0].y
					dirOut: 0
					tensionOut: 1.3
					expand:
						width: ( 100 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle: Math.PI / 2
						distr: 0
				2:
					# x: 275 - (21)
					# x: contours[0].nodes[0].x + 200 * width + 30 - (21)
					x: contours[1].nodes[0].expandedTo[0].x + ( contours[0].nodes[3].expandedTo[0].x - contours[1].nodes[0].expandedTo[0].x ) * 0.5 + ( 7 / 90 ) * thickness
					y: ( ( 85 / defaultThickness ) * thickness / 250 ) * descender + (12)
					dirIn: Utils.lineAngle( {x: contours[0].nodes[3].x, y: contours[0].nodes[3].y}, {x: contours[0].nodes[2].x, y: contours[0].nodes[2].y} )
					tensionIn: 1.3
					typeOut: 'line'
					expand:
						width: ( 100 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( 180 - 26 ) / 180 * Math.PI
						distr: 0.25
				3:
					# x: 480 - (33)
					x: Math.max(
						contours[1].nodes[0].expandedTo[0].x + 200 * width + 270 - (33),
						contours[1].nodes[0].expandedTo[1].x + 0.25 * ( 130 / defaultThickness ) * thickness * contrast + 10
					)
					# x: contours[1].nodes[0].expandedTo[0].x
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeIn: 'line'
					expand:
						width: ( 130 / defaultThickness ) * thickness * contrast
						angle: Math.PI
						distr: 0.25
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (32) - serifWidth / 2
					y: xHeight - Math.max( 0, serifHeight * serifArc )
					typeOut: 'line'
					expand:
						width: ( 130 / defaultThickness ) * thickness
						angle: 0
						distr: 0.25
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( 15 / defaultThickness ) * thickness
					y: contours[0].nodes[2].expandedTo[1].y - ( 10 / defaultThickness ) * thickness
					typeIn: 'line'
					expand:
						width: ( 180 / defaultThickness ) * thickness
						angle: Utils.lineAngle( {x: contours[0].nodes[3].expandedTo[1].x, y: contours[0].nodes[3].expandedTo[1].y}, {x: contours[0].nodes[2].expandedTo[1].x, y: contours[0].nodes[2].expandedTo[1].y} ) + Math.PI
						distr: 0
	components:
		0:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft'
			class: 'obtuseLeftSerif'
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
		1:
			base: ['serif-oblique-acute', 'none']
			id: 'topright'
			class: 'acuteLeftSerif'
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
		2:
			base: ['serif-oblique-obtuse', 'none']
			id: 'topleft2'
			class: 'obtuseRightSerif'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0]
					noneAnchor: contours[0].nodes[3].expandedTo[0]
					opposite: contours[0].nodes[3].expandedTo[1]
					obliqueEndPoint: contours[0].nodes[2].expandedTo[0]
			transformOrigin: contours[0].nodes[3].expandedTo[0]
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
					base: contours[0].nodes[3].expandedTo[1]
					noneAnchor: contours[0].nodes[3].expandedTo[1]
					opposite: contours[0].nodes[3].expandedTo[0]
					obliqueEndPoint: contours[0].nodes[2].expandedTo[1]
					scaleX: -1
					reversed: true
			transformOrigin: contours[0].nodes[3].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
