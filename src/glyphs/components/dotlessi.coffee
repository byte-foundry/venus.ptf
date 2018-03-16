exports.glyphs['dotlessi'] =
	global: true
	glyphName: "dotlessi"
	characterName: "LATIN SMALL LETTER DOTLESS I"
	unicode: 'ı'
	tags: [
		'component',
		'diacritic'
	]
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + spacingRight
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	parameters:
		spacingLeft: 50 * spacing + 70
		spacingRight: 50 * spacing + 70
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: xHeight + diacriticHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: spacingLeft + (97)
					y: 0
					typeOut: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
				1:
					x: contours[0].nodes[0].x
					y: xHeight
					typeIn: 'line'
					expand:
						width: thickness
						angle: 0
						distr: 0.5
