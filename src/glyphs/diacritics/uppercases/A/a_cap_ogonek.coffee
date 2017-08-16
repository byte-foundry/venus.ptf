exports.glyphs['a_cap_ogonek'] =
	unicode: 'Ą'
	glyphName: 'Aogonek'
	characterName: 'LATIN CAPITAL LETTER A WITH OGONEK'
	base: 'A_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'ogonek'
			id: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					angle: parentAnchors[1].angle
