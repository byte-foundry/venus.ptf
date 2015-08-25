exports.glyphs['a_cap_dieresis'] =
	unicode: 'Ä'
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
			base: 'dot'
			parentAnchors:
				0:
					x: 358 + thickness / 4 - 42 - thickness / 2
					y: capHeight + 150
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: 358 + thickness / 4 + 42 + thickness / 2
					y: capHeight + 150
