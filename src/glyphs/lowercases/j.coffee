exports.glyphs['j'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + (57) + serifWidth / 2
		spacingRight: 50 * spacing + 70
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x - 85 * width
					y: ( 75 / 250 ) * descender
					typeOut: 'line'
					expand:
						width: ( 95 / 115 ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[0].nodes[2].expandedTo[0].x - 50
					y: contours[0].nodes[0].y
					dirOut: 0
					typeIn: 'smooth'
					tensionOut: 1.3
					expand:
						width: ( 100 / 115 ) * thickness * contrast * contrastExtremity
						angle:( - 72 ) / 180 * Math.PI
						distr: 0
				2:
					x: contours[0].nodes[3].x
					y: 0
					dirIn:( - 90 ) / 180 * Math.PI
					tensionIn: 1.3
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				3:
					x: spacingLeft + 150 * width - 150
					y: xHeight - Math.max(0, serifHeight * serifArc )- ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[1].x
					y: xHeight
					typeOut: 'line'
				1:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y - 10
					typeOut: 'line'
				2:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].expandedTo[1].y - 10
					typeOut: 'line'
				3:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].expandedTo[1].y
					typeOut: 'line'
				4:
					x: ( contours[0].nodes[3].expandedTo[0].x + contours[0].nodes[3].expandedTo[1].x ) / 2
					y: xHeight
					typeOut: 'line'
	components:
		0:
			base: 'title'
			id: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[3].expandedTo[0].x + thickness / 2
					# y: Math.max(
					# 	ascenderHeight - ( 125 / 115 ) * thickness,
					# 	xHeight + 50
					# )
					y: xHeight + diacriticHeight
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[0].nodes[3].expandedTo[0]
					noneAnchor: contours[0].nodes[3].expandedTo[0]
					opposite: contours[0].nodes[3].expandedTo[1]
					reversed: true
			transformOrigin: contours[0].nodes[3]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewY',( - 15 * spurHeight ) / 180 * Math.PI ],
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
