exports.glyphs['X_sc'] =
	#
	# TODO:
	# LATIN LETTER SMALL CAPITAL X have no unicode for now…
	#
	unicode: 61560 # Unicode Private Use
	glyphName: 'xsmall'
	characterName: 'LATIN LETTER SMALL CAPITAL X'
	base: 'X_cap'
	advanceWidth: base.advanceWidth
	transforms: Array(
		['skewX',( slant ) / 180 * Math.PI]
	)
	tags: [
		'all',
		'latin',
		'smallcap'
	]
	parameters:
		capHeight: scCapHeight
		thickness: scThickness
		width: scWidth
