exports.glyphs['a_alt_tilde'] =
	unicode: 'ã'
	glyphName: 'atilde'
	characterName: 'LATIN SMALL LETTER A WITH TILDE'
	altImg: 'alt-grotesk-single-story-a.svg'
	base: 'a_alt'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'tilde'
			id: 'tilde'
			parentAnchors:
				0:
					x: parentAnchors[2].x
					y: parentAnchors[2].y
