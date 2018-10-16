exports.lib =
	parameters:
		capHeight: xHeight + capDelta
		scCapHeight: xHeight + ( capDelta / 3 ) * smallCapDelta
		scThickness: thickness * _scThickness
		scWidth: width * _scWidth
		contrast: _contrast * -1
		contrastExtremity: _contrastExtremity * -1
		ascenderHeight: xHeight + ascender
		minThickness: Math.max( 60, ( 125 / defaultThickness ) * thickness )
		correctWidthAperture: Math.max(0, 180 - 180 * width)
		correctTensionAperture: 1.2 * ( aperture / aperture ) # dirty workaround
		contrast: -1 * _contrast
		minSpace: thickness / 2
		defaultThickness: 115 * ( aperture / aperture ) # dirty workaround #TODO
		serifHeight:
			if serifWidth < 0.15 && serifHeight < 0.15
			then Math.max(5, serifHeight)
			else serifHeight
