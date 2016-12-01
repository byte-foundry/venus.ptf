exports.glyphs['a_ogonek'] =
	unicode: 'ą'
	glyphName: 'aogonek'
	characterName: 'LATIN SMALL LETTER A WITH OGONEK'
	base: 'a'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'ogonek'
			copy: true
			parentAnchors:
				0:
					x: anchors[1].x
					y: anchors[1].y
