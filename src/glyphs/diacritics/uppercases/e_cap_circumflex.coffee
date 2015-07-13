exports.glyphs['e_cap_circumflex'] =
	unicode: 'Ê'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'E_cap'
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
