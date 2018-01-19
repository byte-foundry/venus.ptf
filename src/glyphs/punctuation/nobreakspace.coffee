exports.glyphs['nobreakspace'] =
	unicode: 160
	glyphName: 'uni00A0'
	characterName: 'NO-BREAK SPACE'
	ot:
		advanceWidth: 220 * width
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	parameters:
		spacingLeft: 50 * spacing + 0
		spacingRight: 50 * spacing + 0
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: 0
					y: 0
