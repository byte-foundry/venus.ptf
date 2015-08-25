exports.glyphs['a_cap_acute'] =
	unicode: 'Á'
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
		1:
			base: 'acute'
			parentAnchors:
				0:
					x: 270
					y: capHeight + diacriticHeight
