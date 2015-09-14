exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		contrast: _contrast * -1
		ascenderHeight: xHeight + ascender
		spacing: 1 * ( width / width ) # dirty workaround
		diacriticHeight: 70 * ( width / width ) # dirty workaround
		minThickness: Math.max( 45, ( 125 / 115 ) * thickness )
		correctWidthAperture: Math.max(0, 180 - 180 * width)
		correctTensionAperture: 1.2 * ( aperture / aperture ) # dirty workaround
	transforms: Array(
		['skewX', slant + 'deg']
	)
