exports.glyphs['O_cap_slash'] =
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
			copy: true
			parentAnchors:
				0:
					left: anchors[0].left
					right: anchors[0].right
			parentParameters:
				xHeight: capHeight
				thickness: thickness * opticThickness * 1.5
