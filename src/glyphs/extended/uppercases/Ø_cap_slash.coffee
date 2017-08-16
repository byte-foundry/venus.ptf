exports.glyphs['Ø_cap_slash'] =
	unicode: 'Ø'
	glyphName: 'Oslash'
	characterName: 'LATIN CAPITAL LETTER O WITH STROKE'
	base: 'O_cap'
	advanceWidth: base.advanceWidth
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'stroke'
			id: 'stroke'
			copy: true
			parentAnchors:
				0:
					left: parentAnchors[0].left
					right: parentAnchors[0].right
			parentParameters:
				xHeight: capHeight
				thickness: thickness * opticThickness * 1.5
