exports.fontinfo =
	familyName: 'Prototypo Grotesk'
	version: '0.1.0'
	description: 'The first grotesk parametric typeface'
	tags: [
		'all',
		'latin',
		'lowercase',
		'uppercase',
		'punctuation',
		'figures',
		'diacritic',
		'smallcap'
	]
	defaultAlts: {
		97: 'a',
		99: 'c',
		105: 'i',
		224: 'a_grave',
		225: 'a_acute',
		226: 'a_circumflex',
		228: 'a_dieresis',
		229: 'a_ring',
		231: 'c_cedilla',
		236: 'i_grave',
		237: 'i_acute',
		238: 'i_circumflex',
		239: 'i_dieresis',
		257: 'a_macron',
		259: 'a_breve',
		267: 'c_dot_accent',
		269: 'c_caron',
		299: 'i_macron',
		301: 'i_breve'
	}
	ascender: Math.max( ascenderHeight, capHeight ) * 1.3
	descender: descender - 50
	'cap-height': Math.max( ascenderHeight, capHeight ) * 1.3
	'descendent-height': descender - 50
