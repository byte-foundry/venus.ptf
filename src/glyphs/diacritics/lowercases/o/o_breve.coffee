exports.glyphs['o_breve'] =
	unicode: 'ŏ'
	glyphName: "obreve"
	characterName: "LATIN SMALL LETTER O WITH BREVE"
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + spacingRight
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	parameters:
		spacingLeft: 50 * spacing + (31)
		spacingRight: 50 * spacing
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: spacingLeft
					y: ( 260 / 520 ) * xHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.15
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x + ( contours[0].nodes[2].expandedTo[0].x - contours[0].nodes[0].expandedTo[0].x ) * 0.5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					tensionOut: 1.15
					expand: Object({
						width: ( 85 / 115 ) * thickness * contrast * contrastExtremity
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 300 * width + (65)
					y: contours[0].nodes[0].y
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: ( 125 / 115 ) * thickness
						angle: 180 + 'deg'
						distr: 0
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: ( 85 / 115 ) * thickness * contrast * contrastExtremity
						angle: 90 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'breve'
			parentAnchors:
				0:
					x: contours[0].nodes[1].x
					y: xHeight + diacriticHeight
