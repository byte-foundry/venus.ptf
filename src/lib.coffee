exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		spacing: 1 * ( width / width ) # dirty workaround
		diacriticHeight: 70 * ( width / width ) # dirty workaround
		minThickness: Math.max( 45, ( 125 / 115 ) * thickness )
	transforms: Array(
		['skewX', slant + 'deg']
	)
