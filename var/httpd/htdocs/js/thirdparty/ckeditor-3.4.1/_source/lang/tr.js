﻿/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

/**
* @fileOverview
*/

/**#@+
   @type String
   @example
*/

/**
 * Constains the dictionary of language entries.
 * @namespace
 */
CKEDITOR.lang['tr'] =
{
	/**
	 * The language reading direction. Possible values are "rtl" for
	 * Right-To-Left languages (like Arabic) and "ltr" for Left-To-Right
	 * languages (like English).
	 * @default 'ltr'
	 */
	dir : 'ltr',

	/*
	 * Screenreader titles. Please note that screenreaders are not always capable
	 * of reading non-English words. So be careful while translating it.
	 */
	editorTitle : 'Zengin metin editörü, %1, yardım için ALT 0 tuşuna basın.',

	// ARIA descriptions.
	toolbar	: 'Toolbar',
	editor	: 'Zengin Metin Editörü',

	// Toolbar buttons without dialogs.
	source			: 'Kaynak',
	newPage			: 'Yeni Sayfa',
	save			: 'Kaydet',
	preview			: 'Ön İzleme',
	cut				: 'Kes',
	copy			: 'Kopyala',
	paste			: 'Yapıştır',
	print			: 'Yazdır',
	underline		: 'Altı Çizgili',
	bold			: 'Kalın',
	italic			: 'İtalik',
	selectAll		: 'Tümünü Seç',
	removeFormat	: 'Biçimi Kaldır',
	strike			: 'Üstü Çizgili',
	subscript		: 'Alt Simge',
	superscript		: 'Üst Simge',
	horizontalrule	: 'Yatay Satır Ekle',
	pagebreak		: 'Sayfa Sonu Ekle',
	unlink			: 'Köprü Kaldır',
	undo			: 'Geri Al',
	redo			: 'Tekrarla',

	// Common messages and labels.
	common :
	{
		browseServer	: 'Sunucuyu Gez',
		url				: 'URL',
		protocol		: 'Protokol',
		upload			: 'Karşıya Yükle',
		uploadSubmit	: 'Sunucuya Yolla',
		image			: 'Resim',
		flash			: 'Flash',
		form			: 'Form',
		checkbox		: 'Onay Kutusu',
		radio			: 'Seçenek Düğmesi',
		textField		: 'Metin Girişi',
		textarea		: 'Çok Satırlı Metin',
		hiddenField		: 'Gizli Veri',
		button			: 'Düğme',
		select			: 'Seçim Menüsü',
		imageButton		: 'Resimli Düğme',
		notSet			: '<tanımlanmamış>',
		id				: 'Kimlik',
		name			: 'Ad',
		langDir			: 'Dil Yönü',
		langDirLtr		: 'Soldan Sağa (LTR)',
		langDirRtl		: 'Sağdan Sola (RTL)',
		langCode		: 'Dil Kodlaması',
		longDescr		: 'Uzun Tanımlı URL',
		cssClass		: 'Biçem Sayfası Sınıfları',
		advisoryTitle	: 'Danışma Başlığı',
		cssStyle		: 'Biçem',
		ok				: 'Tamam',
		cancel			: 'İptal',
		close			: 'Kapat',
		preview			: 'Ön gösterim',
		generalTab		: 'Genel',
		advancedTab		: 'Gelişmiş',
		validateNumberFailed : 'Bu değer sayı değildir.',
		confirmNewPage	: 'İceriğiniz kayıt edilmediğinden dolayı kaybolacaktır. Yeni bir sayfa yüklemek istediğinize eminsiniz?',
		confirmCancel	: 'Bazı seçenekler değişmiştir. Dialog penceresini kapatmak istediğinize eminmisiniz?',
		options			: 'Seçenekler',
		target			: 'Hedef',
		targetNew		: 'Yeni Pencere (_blank)',
		targetTop		: 'Enüst Pencere (_top)',
		targetSelf		: 'Aynı Pencere (_self)',
		targetParent	: 'Ana Pencere (_parent)',
		langDirLTR		: 'Left to Right (LTR)', // MISSING
		langDirRTL		: 'Right to Left (RTL)', // MISSING
		styles			: 'Style', // MISSING
		cssClasses		: 'Stylesheet Classes', // MISSING

		// Put the voice-only part of the label in the span.
		unavailable		: '%1<span class="cke_accessibility">, hazır değildir</span>'
	},

	contextmenu :
	{
		options : 'İçerik Menüsü Seçenekleri'
	},

	// Special char dialog.
	specialChar		:
	{
		toolbar		: 'Özel Karakter Ekle',
		title		: 'Özel Karakter Seç',
		options : 'Özel Karakter Seçenekleri'
	},

	// Link dialog.
	link :
	{
		toolbar		: 'Link Ekle/Düzenle',
		other 		: '<diğer>',
		menu		: 'Link Düzenle',
		title		: 'Link',
		info		: 'Link Bilgisi',
		target		: 'Hedef',
		upload		: 'Karşıya Yükle',
		advanced	: 'Gelişmiş',
		type		: 'Link Türü',
		toUrl		: 'URL',
		toAnchor	: 'Bu sayfada çapa',
		toEmail		: 'E-Posta',
		targetFrame		: '<çerçeve>',
		targetPopup		: '<yeni açılan pencere>',
		targetFrameName	: 'Hedef Çerçeve Adı',
		targetPopupName	: 'Yeni Açılan Pencere Adı',
		popupFeatures	: 'Yeni Açılan Pencere Özellikleri',
		popupResizable	: 'Resizable',
		popupStatusBar	: 'Durum Çubuğu',
		popupLocationBar: 'Yer Çubuğu',
		popupToolbar	: 'Araç Çubuğu',
		popupMenuBar	: 'Menü Çubuğu',
		popupFullScreen	: 'Tam Ekran (IE)',
		popupScrollBars	: 'Kaydırma Çubukları',
		popupDependent	: 'Bağımlı (Netscape)',
		popupWidth		: 'Genişlik',
		popupLeft		: 'Sola Göre Konum',
		popupHeight		: 'Yükseklik',
		popupTop		: 'Yukarıya Göre Konum',
		id				: 'Id',
		langDir			: 'Dil Yönü',
		langDirLTR		: 'Soldan Sağa (LTR)',
		langDirRTL		: 'Sağdan Sola (RTL)',
		acccessKey		: 'Erişim Tuşu',
		name			: 'Ad',
		langCode		: 'Dil Yönü',
		tabIndex		: 'Sekme İndeksi',
		advisoryTitle	: 'Danışma Başlığı',
		advisoryContentType	: 'Danışma İçerik Türü',
		cssClasses		: 'Biçem Sayfası Sınıfları',
		charset			: 'Bağlı Kaynak Karakter Gurubu',
		styles			: 'Biçem',
		selectAnchor	: 'Bağlantı Seç',
		anchorName		: 'Bağlantı Adı ile',
		anchorId		: 'Eleman Kimlik Numarası ile',
		emailAddress	: 'E-Posta Adresi',
		emailSubject	: 'İleti Konusu',
		emailBody		: 'İleti Gövdesi',
		noAnchors		: '(Bu belgede hiç çapa yok)',
		noUrl			: 'Lütfen Link URL\'sini yazın',
		noEmail			: 'Lütfen E-posta adresini yazın'
	},

	// Anchor dialog
	anchor :
	{
		toolbar		: 'Bağlantı Ekle/Düzenle',
		menu		: 'Bağlantı Özellikleri',
		title		: 'Bağlantı Özellikleri',
		name		: 'Bağlantı Adı',
		errorName	: 'Lütfen bağlantı için ad giriniz'
	},

	// List style dialog
	list:
	{
		numberedTitle		: 'Sayılandırılmış Liste Özellikleri',
		bulletedTitle		: 'Simgeli Liste Özellikleri',
		type				: 'Tipi',
		start				: 'Başla',
		validateStartNumber				:'List start number must be a whole number.', // MISSING
		circle				: 'Daire',
		disc				: 'Disk',
		square				: 'Kare',
		none				: 'Yok',
		notset				: '<ayarlanmamış>',
		armenian			: 'Ermenice sayılandırma',
		georgian			: 'Gürcüce numaralandırma (an, ban, gan, vs.)',
		lowerRoman			: 'Küçük Roman (i, ii, iii, iv, v, vs.)',
		upperRoman			: 'Büyük Roman (I, II, III, IV, V, vs.)',
		lowerAlpha			: 'Küçük Alpha (a, b, c, d, e, vs.)',
		upperAlpha			: 'Büyük Alpha (A, B, C, D, E, vs.)',
		lowerGreek			: 'Küçük Greek (alpha, beta, gamma, vs.)',
		decimal				: 'Ondalık (1, 2, 3, vs.)',
		decimalLeadingZero	: 'Başı sıfırlı ondalık (01, 02, 03, vs.)'
	},

	// Find And Replace Dialog
	findAndReplace :
	{
		title				: 'Bul ve Değiştir',
		find				: 'Bul',
		replace				: 'Değiştir',
		findWhat			: 'Aranan:',
		replaceWith			: 'Bununla değiştir:',
		notFoundMsg			: 'Belirtilen yazı bulunamadı.',
		matchCase			: 'Büyük/küçük harf duyarlı',
		matchWord			: 'Kelimenin tamamı uysun',
		matchCyclic			: 'Eşleşen döngü',
		replaceAll			: 'Tümünü Değiştir',
		replaceSuccessMsg	: '%1 bulunanlardan değiştirildi.'
	},

	// Table Dialog
	table :
	{
		toolbar		: 'Tablo',
		title		: 'Tablo Özellikleri',
		menu		: 'Tablo Özellikleri',
		deleteTable	: 'Tabloyu Sil',
		rows		: 'Satırlar',
		columns		: 'Sütunlar',
		border		: 'Kenar Kalınlığı',
		align		: 'Hizalama',
		alignLeft	: 'Sol',
		alignCenter	: 'Merkez',
		alignRight	: 'Sağ',
		width		: 'Genişlik',
		widthPx		: 'piksel',
		widthPc		: 'yüzde',
		widthUnit	: 'genişlik birimi',
		height		: 'Yükseklik',
		cellSpace	: 'Izgara kalınlığı',
		cellPad		: 'Izgara yazı arası',
		caption		: 'Başlık',
		summary		: 'Özet',
		headers		: 'Başlıklar',
		headersNone		: 'Yok',
		headersColumn	: 'İlk Sütun',
		headersRow		: 'İlk Satır',
		headersBoth		: 'Her İkisi',
		invalidRows		: 'Satır sayısı 0 sayısından büyük olmalıdır.',
		invalidCols		: 'Sütün sayısı 0 sayısından büyük olmalıdır.',
		invalidBorder	: 'Çerceve büyüklüklüğü sayı olmalıdır.',
		invalidWidth	: 'Tablo genişliği sayı olmalıdır.',
		invalidHeight	: 'Tablo yüksekliği sayı olmalıdır.',
		invalidCellSpacing	: 'Hücre boşluğu (spacing) sayı olmalıdır.',
		invalidCellPadding	: 'Hücre aralığı (padding) sayı olmalıdır.',

		cell :
		{
			menu			: 'Hücre',
			insertBefore	: 'Hücre Ekle - Önce',
			insertAfter		: 'Hücre Ekle - Sonra',
			deleteCell		: 'Hücre Sil',
			merge			: 'Hücreleri Birleştir',
			mergeRight		: 'Birleştir - Sağdaki İle ',
			mergeDown		: 'Birleştir - Aşağıdaki İle ',
			splitHorizontal	: 'Hücreyi Yatay Böl',
			splitVertical	: 'Hücreyi Dikey Böl',
			title			: 'Hücre Özellikleri',
			cellType		: 'Hücre Tipi',
			rowSpan			: 'Satırlar Mesafesi (Span)',
			colSpan			: 'Sütünlar Mesafesi (Span)',
			wordWrap		: 'Kelime Kaydırma',
			hAlign			: 'Düşey Hizalama',
			vAlign			: 'Yataş Hizalama',
			alignTop		: 'Üst',
			alignMiddle		: 'Orta',
			alignBottom		: 'Alt',
			alignBaseline	: 'Tabana',
			bgColor			: 'Arkaplan Rengi',
			borderColor		: 'Çerçeve Rengi',
			data			: 'Veri',
			header			: 'Başlık',
			yes				: 'Evet',
			no				: 'Hayır',
			invalidWidth	: 'Hücre genişliği sayı olmalıdır.',
			invalidHeight	: 'Hücre yüksekliği sayı olmalıdır.',
			invalidRowSpan	: 'Satırların mesafesi tam sayı olmalıdır.',
			invalidColSpan	: 'Sütünların mesafesi tam sayı olmalıdır.',
			chooseColor		: 'Seçiniz'
		},

		row :
		{
			menu			: 'Satır',
			insertBefore	: 'Satır Ekle - Önce',
			insertAfter		: 'Satır Ekle - Sonra',
			deleteRow		: 'Satır Sil'
		},

		column :
		{
			menu			: 'Sütun',
			insertBefore	: 'Kolon Ekle - Önce',
			insertAfter		: 'Kolon Ekle - Sonra',
			deleteColumn	: 'Sütun Sil'
		}
	},

	// Button Dialog.
	button :
	{
		title		: 'Düğme Özellikleri',
		text		: 'Metin (Değer)',
		type		: 'Tip',
		typeBtn		: 'Düğme',
		typeSbm		: 'Gönder',
		typeRst		: 'Sıfırla'
	},

	// Checkbox and Radio Button Dialogs.
	checkboxAndRadio :
	{
		checkboxTitle : 'Onay Kutusu Özellikleri',
		radioTitle	: 'Seçenek Düğmesi Özellikleri',
		value		: 'Değer',
		selected	: 'Seçili'
	},

	// Form Dialog.
	form :
	{
		title		: 'Form Özellikleri',
		menu		: 'Form Özellikleri',
		action		: 'İşlem',
		method		: 'Yöntem',
		encoding	: 'Kodlama'
	},

	// Select Field Dialog.
	select :
	{
		title		: 'Seçim Menüsü Özellikleri',
		selectInfo	: 'Bilgi',
		opAvail		: 'Mevcut Seçenekler',
		value		: 'Değer',
		size		: 'Boyut',
		lines		: 'satır',
		chkMulti	: 'Çoklu seçime izin ver',
		opText		: 'Metin',
		opValue		: 'Değer',
		btnAdd		: 'Ekle',
		btnModify	: 'Düzenle',
		btnUp		: 'Yukarı',
		btnDown		: 'Aşağı',
		btnSetValue : 'Seçili değer olarak ata',
		btnDelete	: 'Sil'
	},

	// Textarea Dialog.
	textarea :
	{
		title		: 'Çok Satırlı Metin Özellikleri',
		cols		: 'Sütunlar',
		rows		: 'Satırlar'
	},

	// Text Field Dialog.
	textfield :
	{
		title		: 'Metin Girişi Özellikleri',
		name		: 'Ad',
		value		: 'Değer',
		charWidth	: 'Karakter Genişliği',
		maxChars	: 'En Fazla Karakter',
		type		: 'Tür',
		typeText	: 'Metin',
		typePass	: 'Şifre'
	},

	// Hidden Field Dialog.
	hidden :
	{
		title	: 'Gizli Veri Özellikleri',
		name	: 'Ad',
		value	: 'Değer'
	},

	// Image Dialog.
	image :
	{
		title		: 'Resim Özellikleri',
		titleButton	: 'Resimli Düğme Özellikleri',
		menu		: 'Resim Özellikleri',
		infoTab		: 'Resim Bilgisi',
		btnUpload	: 'Sunucuya Yolla',
		upload		: 'Karşıya Yükle',
		alt			: 'Alternatif Yazı',
		width		: 'Genişlik',
		height		: 'Yükseklik',
		lockRatio	: 'Oranı Kilitle',
		unlockRatio	: 'Kilitli Oran',
		resetSize	: 'Boyutu Başa Döndür',
		border		: 'Kenar',
		hSpace		: 'Yatay Boşluk',
		vSpace		: 'Dikey Boşluk',
		align		: 'Hizalama',
		alignLeft	: 'Sol',
		alignRight	: 'Sağ',
		alertUrl	: 'Lütfen resmin URL\'sini yazınız',
		linkTab		: 'Köprü',
		button2Img	: 'Seçili resim butonunu basit resime çevirmek istermisiniz?',
		img2Button	: 'Seçili olan resimi, resimli butona çevirmek istermisiniz?',
		urlMissing	: 'Resmin URL kaynağı eksiktir.',
		validateWidth	: 'Genişlik tam sayı olmalıdır.',
		validateHeight	: 'Yükseklik tam sayı olmalıdır.',
		validateBorder	: 'Çerçeve tam sayı olmalıdır.',
		validateHSpace	: 'HSpace tam sayı olmalıdır.',
		validateVSpace	: 'VSpace tam sayı olmalıdır.'
	},

	// Flash Dialog
	flash :
	{
		properties		: 'Flash Özellikleri',
		propertiesTab	: 'Özellikler',
		title			: 'Flash Özellikleri',
		chkPlay			: 'Otomatik Oynat',
		chkLoop			: 'Döngü',
		chkMenu			: 'Flash Menüsünü Kullan',
		chkFull			: 'Tam ekrana İzinver',
 		scale			: 'Boyutlandır',
		scaleAll		: 'Hepsini Göster',
		scaleNoBorder	: 'Kenar Yok',
		scaleFit		: 'Tam Sığdır',
		access			: 'Kod İzni',
		accessAlways	: 'Herzaman',
		accessSameDomain: 'Aynı domain',
		accessNever		: 'Asla',
		align			: 'Hizalama',
		alignLeft		: 'Sol',
		alignAbsBottom	: 'Tam Altı',
		alignAbsMiddle	: 'Tam Ortası',
		alignBaseline	: 'Taban Çizgisi',
		alignBottom		: 'Alt',
		alignMiddle		: 'Orta',
		alignRight		: 'Sağ',
		alignTextTop	: 'Yazı Tepeye',
		alignTop		: 'Tepe',
		quality			: 'Kalite',
		qualityBest		: 'En iyi',
		qualityHigh		: 'Yüksek',
		qualityAutoHigh	: 'Otomatik Yükseklik',
		qualityMedium	: 'Orta',
		qualityAutoLow	: 'Otomatik Düşüklük',
		qualityLow		: 'Düşük',
		windowModeWindow: 'Pencere',
		windowModeOpaque: 'Opak',
		windowModeTransparent : 'Şeffaf',
		windowMode		: 'Pencere modu',
		flashvars		: 'Flash Değerleri',
		bgcolor			: 'Arka Renk',
		width			: 'Genişlik',
		height			: 'Yükseklik',
		hSpace			: 'Yatay Boşluk',
		vSpace			: 'Dikey Boşluk',
		validateSrc		: 'Lütfen köprü URL\'sini yazın',
		validateWidth	: 'Genişlik bir sayı olmalıdır.',
		validateHeight	: 'Yükseklik sayı olmalıdır.',
		validateHSpace	: 'HSpace sayı olmalıdır.',
		validateVSpace	: 'VSpace sayı olmalıdır.'
	},

	// Speller Pages Dialog
	spellCheck :
	{
		toolbar			: 'Yazım Denetimi',
		title			: 'Yazımı Denetle',
		notAvailable	: 'Üzügünüz, bu servis şuanda hizmet dışıdır.',
		errorLoading	: 'Uygulamada yüklerken hata oluştu: %s.',
		notInDic		: 'Sözlükte Yok',
		changeTo		: 'Şuna değiştir:',
		btnIgnore		: 'Yoksay',
		btnIgnoreAll	: 'Tümünü Yoksay',
		btnReplace		: 'Değiştir',
		btnReplaceAll	: 'Tümünü Değiştir',
		btnUndo			: 'Geri Al',
		noSuggestions	: '- Öneri Yok -',
		progress		: 'Yazım denetimi işlemde...',
		noMispell		: 'Yazım denetimi tamamlandı: Yanlış yazıma rastlanmadı',
		noChanges		: 'Yazım denetimi tamamlandı: Hiçbir kelime değiştirilmedi',
		oneChange		: 'Yazım denetimi tamamlandı: Bir kelime değiştirildi',
		manyChanges		: 'Yazım denetimi tamamlandı: %1 kelime değiştirildi',
		ieSpellDownload	: 'Yazım denetimi yüklenmemiş. Şimdi yüklemek ister misiniz?'
	},

	smiley :
	{
		toolbar	: 'İfade',
		title	: 'İfade Ekle',
		options : 'İfade Seçenekleri'
	},

	elementsPath :
	{
		eleLabel : 'Elementlerin yolu',
		eleTitle : '%1 element'
	},

	numberedlist	: 'Numaralı Liste',
	bulletedlist	: 'Simgeli Liste',
	indent			: 'Sekme Arttır',
	outdent			: 'Sekme Azalt',

	justify :
	{
		left	: 'Sola Dayalı',
		center	: 'Ortalanmış',
		right	: 'Sağa Dayalı',
		block	: 'İki Kenara Yaslanmış'
	},

	blockquote : 'Blok Oluştur',

	clipboard :
	{
		title		: 'Yapıştır',
		cutError	: 'Gezgin yazılımınızın güvenlik ayarları düzenleyicinin otomatik kesme işlemine izin vermiyor. İşlem için (Ctrl/Cmd+X) tuşlarını kullanın.',
		copyError	: 'Gezgin yazılımınızın güvenlik ayarları düzenleyicinin otomatik kopyalama işlemine izin vermiyor. İşlem için (Ctrl/Cmd+C) tuşlarını kullanın.',
		pasteMsg	: 'Lütfen aşağıdaki kutunun içine yapıştırın. (<STRONG>Ctrl/Cmd+V</STRONG>) ve <STRONG>Tamam</STRONG> butonunu tıklayın.',
		securityMsg	: 'Gezgin yazılımınızın güvenlik ayarları düzenleyicinin direkt olarak panoya erişimine izin vermiyor. Bu pencere içine tekrar yapıştırmalısınız..',
		pasteArea	: 'Paste Area'
	},

	pastefromword :
	{
		confirmCleanup	: 'Yapıştırmaya çalıştığınız metin Word\'den kopyalanmıştır. Yapıştırmadan önce silmek istermisiniz?',
		toolbar			: 'Word\'den Yapıştır',
		title			: 'Word\'den Yapıştır',
		error			: 'Yapıştırmadaki veri bilgisi hata düzelene kadar silinmeyecektir'
	},

	pasteText :
	{
		button	: 'Düz Metin Olarak Yapıştır',
		title	: 'Düz Metin Olarak Yapıştır'
	},

	templates :
	{
		button			: 'Şablonlar',
		title			: 'İçerik Şablonları',
		options : 'Şablon Seçenekleri',
		insertOption	: 'Mevcut içerik ile değiştir',
		selectPromptMsg	: 'Düzenleyicide açmak için lütfen bir şablon seçin.<br>(hali hazırdaki içerik kaybolacaktır.):',
		emptyListMsg	: '(Belirli bir şablon seçilmedi)'
	},

	showBlocks : 'Blokları Göster',

	stylesCombo :
	{
		label		: 'Biçem',
		panelTitle	: 'Stilleri Düzenliyor',
		panelTitle1	: 'Blok Stilleri',
		panelTitle2	: 'Inline Stilleri',
		panelTitle3	: 'Nesne Stilleri'
	},

	format :
	{
		label		: 'Biçim',
		panelTitle	: 'Biçim',

		tag_p		: 'Normal',
		tag_pre		: 'Biçimli',
		tag_address	: 'Adres',
		tag_h1		: 'Başlık 1',
		tag_h2		: 'Başlık 2',
		tag_h3		: 'Başlık 3',
		tag_h4		: 'Başlık 4',
		tag_h5		: 'Başlık 5',
		tag_h6		: 'Başlık 6',
		tag_div		: 'Paragraf (DIV)'
	},

	div :
	{
		title				: 'Div İçeriği Oluştur',
		toolbar				: 'Div İçeriği Oluştur',
		cssClassInputLabel	: 'Stilltipi Sınıfı',
		styleSelectLabel	: 'Stil',
		IdInputLabel		: 'Id',
		languageCodeInputLabel	: ' Dil Kodu',
		inlineStyleInputLabel	: 'Inline Stili',
		advisoryTitleInputLabel	: 'Tavsiye Başlığı',
		langDirLabel		: 'Dil Yönü',
		langDirLTRLabel		: 'Soldan sağa (LTR)',
		langDirRTLLabel		: 'Sağdan sola (RTL)',
		edit				: 'Div Düzenle',
		remove				: 'Div Kaldır'
  	},

	font :
	{
		label		: 'Yazı Türü',
		voiceLabel	: 'Font',
		panelTitle	: 'Yazı Türü'
	},

	fontSize :
	{
		label		: 'Boyut',
		voiceLabel	: 'Font Size',
		panelTitle	: 'Boyut'
	},

	colorButton :
	{
		textColorTitle	: 'Yazı Rengi',
		bgColorTitle	: 'Arka Renk',
		panelTitle		: 'Renkler',
		auto			: 'Otomatik',
		more			: 'Diğer renkler...'
	},

	colors :
	{
		'000' : 'Siyah',
		'800000' : 'Kestane',
		'8B4513' : 'Koyu Kahverengi',
		'2F4F4F' : 'Koyu Kurşuni Gri',
		'008080' : 'Teal',
		'000080' : 'Mavi',
		'4B0082' : 'Çivit Mavisi',
		'696969' : 'Silik Gri',
		'B22222' : 'Ateş Tuğlası',
		'A52A2A' : 'Kahverengi',
		'DAA520' : 'Altun Sırık',
		'006400' : 'Koyu Yeşil',
		'40E0D0' : 'Turkuaz',
		'0000CD' : 'Orta Mavi',
		'800080' : 'Pembe',
		'808080' : 'Gri',
		'F00' : 'Kırmızı',
		'FF8C00' : 'Koyu Portakal',
		'FFD700' : 'Altın',
		'008000' : 'Yeşil',
		'0FF' : 'Ciyan',
		'00F' : 'Mavi',
		'EE82EE' : 'Menekşe',
		'A9A9A9' : 'Koyu Gri',
		'FFA07A' : 'Açık Sarımsı',
		'FFA500' : 'Portakal',
		'FFFF00' : 'Sarı',
		'00FF00' : 'Açık Yeşil',
		'AFEEEE' : 'Sönük Turkuaz',
		'ADD8E6' : 'Açık Mavi',
		'DDA0DD' : 'Mor',
		'D3D3D3' : 'Açık Gri',
		'FFF0F5' : 'Eflatun Pembe',
		'FAEBD7' : 'Antik Beyaz',
		'FFFFE0' : 'Açık Sarı',
		'F0FFF0' : 'Balsarısı',
		'F0FFFF' : 'Gök Mavisi',
		'F0F8FF' : 'Reha Mavi',
		'E6E6FA' : 'Eflatun',
		'FFF' : 'Beyaz'
	},

	scayt :
	{
		title			: 'Girmiş olduğunuz kelime denetimi',
		opera_title		: 'Opera tarafından desteklenmemektedir',
		enable			: 'SCAYT etkinleştir',
		disable			: 'SCAYT pasifleştir',
		about			: 'SCAYT hakkında',
		toggle			: 'SCAYT değiştir',
		options			: 'Seçenekler',
		langs			: 'Diller',
		moreSuggestions	: 'Daha fazla öneri',
		ignore			: 'Yoksay',
		ignoreAll		: 'Tümünü Yoksay',
		addWord			: 'Kelime Ekle',
		emptyDic		: 'Sözlük adı boş olamaz.',

		optionsTab		: 'Seçenekler',
		allCaps			: 'Tüm büyük küçük kelimeleri yoksay',
		ignoreDomainNames : 'Domain adlarını yoksay',
		mixedCase		: 'Karışık büyüklük ile Sözcükler yoksay',
		mixedWithDigits	: 'Sayılarla Kelimeler yoksay',

		languagesTab	: 'Diller',

		dictionariesTab	: 'Sözlükler',
		dic_field_name	: 'Sözlük adı',
		dic_create		: 'Oluştur',
		dic_restore		: 'Geri al',
		dic_delete		: 'Sil',
		dic_rename		: 'Yeniden adlandır',
		dic_info		: 'Initially the User Dictionary is stored in a Cookie. However, Cookies are limited in size. When the User Dictionary grows to a point where it cannot be stored in a Cookie, then the dictionary may be stored on our server. To store your personal dictionary on our server you should specify a name for your dictionary. If you already have a stored dictionary, please type it\'s name and click the Restore button.',

		aboutTab		: 'Hakkında'
	},

	about :
	{
		title		: 'CKEditor Hakkında',
		dlgTitle	: 'CKEditor Hakkında',
		moreInfo	: 'Lisanslama hakkında daha fazla bilgi almak için lütfen sitemizi ziyaret edin:',
		copy		: 'Copyright &copy; $1. Tüm hakları saklıdır.'
	},

	maximize : 'Büyült',
	minimize : 'Küçült',

	fakeobjects :
	{
		anchor	: 'Bağlantı',
		flash	: 'Flash Animasyonu',
		div		: 'Sayfa Kesimi',
		unknown	: 'Bilinmeyen Nesne'
	},

	resize : 'Boyutlandırmak için sürükle',

	colordialog :
	{
		title		: 'Renk seç',
		options	:	'Renk Seçenekleri',
		highlight	: 'İşaretle',
		selected	: 'Seçilmiş',
		clear		: 'Temizle'
	},

	toolbarCollapse	: 'Toolbar\'ı topla',
	toolbarExpand	: 'Toolbar\'ı aç',

	bidi :
	{
		ltr : 'Text direction from left to right', // MISSING
		rtl : 'Text direction from right to left' // MISSING
	}
};
