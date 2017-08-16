exports.glyphs['a_ogonek'] =
	unicode: 'ą'
	glyphName: 'aogonek'
	characterName: 'LATIN SMALL LETTER A WITH OGONEK'
	base: 'a'
	advanceWidth: base.advanceWidth
	altImg: 'double-story-a.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
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
