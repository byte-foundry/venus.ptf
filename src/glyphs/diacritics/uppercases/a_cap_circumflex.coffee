exports.glyphs['a_cap_circumflex'] =
	unicode: 'Â'
	ot:
		advanceWidth: width * 680 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'A_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'circumflex'
			parentAnchors:
				0:
					x: 330
					y: capHeight + 70
