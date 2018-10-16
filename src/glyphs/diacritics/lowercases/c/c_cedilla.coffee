exports.glyphs['c_cedilla'] =
	unicode: 'ç'
	glyphName: 'ccedilla'
	characterName: 'LATIN SMALL LETTER C WITH CEDILLA'
	base: 'c'
	advanceWidth: base.advanceWidth
	altImg: 'alt-grotesk-serif-less-c.svg'
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'cedilla'
			id: 'cedilla'
			parentAnchors:
				0:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
