exports.glyphs['j_alt'] =
	unicode: 'j'
	glyphName: 'j'
	characterName: 'LATIN SMALL LETTER J'
	altImg: 'alt-grotesk-squared-j.svg'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70 + serifWidth / 2
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
					x: contours[1].nodes[1].expandedTo[0].x - 85 * width + (57/defaultThickness) * thickness
					y: ( 75 / 250 ) * descender
					typeOut: 'line'
					expand:
						width: ( 95 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
				1:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[0].nodes[0].y
					typeIn: 'line'
					expand:
						width: ( 95 / defaultThickness ) * thickness * contrast * contrastExtremity
						angle:( - 90 ) / 180 * Math.PI
						distr: 0
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[0].nodes[0].y
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 1
				1:
					x: spacingLeft + 150 * width - 150
					y: xHeight - Math.max(0, serifHeight * serifArc )- ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) )
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
	components:
		0:
			base: 'title'
			id: 'title'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[0].x + thickness / 2
					y: xHeight + diacriticHeight
		1:
			base: ['serif-vertical', 'none']
			id: 'topleft'
			class: 'upperLeftStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[0]
					noneAnchor: contours[1].nodes[1].expandedTo[0]
					opposite: contours[1].nodes[1].expandedTo[1]
					reversed: true
			transformOrigin: contours[1].nodes[1]
			transforms: Array(
				[ 'scaleY', -1 ],
				[ 'skewY',( - 15 * spurHeight ) / 180 * Math.PI ],
				[ 'translateY', - ( Math.tan( (15 * spurHeight) / 180 * Math.PI ) * ( thickness / 2 ) ) ]
			)
		2:
			base: ['none', 'serif-vertical']
			id: 'topright'
			class: 'upperRightOutsideStump'
			parentAnchors:
				0:
					base: contours[1].nodes[1].expandedTo[1]
					noneAnchor: contours[1].nodes[1].expandedTo[1]
					opposite: contours[1].nodes[1].expandedTo[0]
			transformOrigin: contours[1].nodes[1].expandedTo[1]
			transforms: Array(
				[ 'scaleX', -1 ],
				[ 'scaleY', -1 ]
			)
