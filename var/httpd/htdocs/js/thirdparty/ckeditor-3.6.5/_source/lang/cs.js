﻿/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

/**
 * @fileOverview Defines the {@link CKEDITOR.lang} object, for the
 * Czech language.
 */

/**#@+
   @type String
   @example
*/

/**
 * Contains the dictionary of language entries.
 * @namespace
 */
CKEDITOR.lang['cs'] =
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
	editorTitle : 'Textový editor, %1',
	editorHelp : 'Stiskněte ALT 0 pro nápovědu',

	// ARIA descriptions.
	toolbars	: 'Panely nástrojů editoru',
	editor		: 'Textový editor',

	// Toolbar buttons without dialogs.
	source			: 'Zdroj',
	newPage			: 'Nová stránka',
	save			: 'Uložit',
	preview			: 'Náhled',
	cut				: 'Vyjmout',
	copy			: 'Kopírovat',
	paste			: 'Vložit',
	print			: 'Tisk',
	underline		: 'Podtržené',
	bold			: 'Tučné',
	italic			: 'Kurzíva',
	selectAll		: 'Vybrat vše',
	removeFormat	: 'Odstranit formátování',
	strike			: 'Přeškrtnuté',
	subscript		: 'Dolní index',
	superscript		: 'Horní index',
	horizontalrule	: 'Vložit vodorovnou linku',
	pagebreak		: 'Vložit konec stránky',
	pagebreakAlt		: 'Konec stránky',
	unlink			: 'Odstranit odkaz',
	undo			: 'Zpět',
	redo			: 'Znovu',

	// Common messages and labels.
	common :
	{
		browseServer	: 'Vybrat na serveru',
		url				: 'URL',
		protocol		: 'Protokol',
		upload			: 'Odeslat',
		uploadSubmit	: 'Odeslat na server',
		image			: 'Obrázek',
		flash			: 'Flash',
		form			: 'Formulář',
		checkbox		: 'Zaškrtávací políčko',
		radio			: 'Přepínač',
		textField		: 'Textové pole',
		textarea		: 'Textová oblast',
		hiddenField		: 'Skryté pole',
		button			: 'Tlačítko',
		select			: 'Seznam',
		imageButton		: 'Obrázkové tlačítko',
		notSet			: '<nenastaveno>',
		id				: 'Id',
		name			: 'Jméno',
		langDir			: 'Směr jazyka',
		langDirLtr		: 'Zleva doprava (LTR)',
		langDirRtl		: 'Zprava doleva (RTL)',
		langCode		: 'Kód jazyka',
		longDescr		: 'Dlouhý popis URL',
		cssClass		: 'Třída stylu',
		advisoryTitle	: 'Pomocný titulek',
		cssStyle		: 'Styl',
		ok				: 'OK',
		cancel			: 'Zrušit',
		close			: 'Zavřít',
		preview			: 'Náhled',
		generalTab		: 'Obecné',
		advancedTab		: 'Rozšířené',
		validateNumberFailed : 'Zadaná hodnota není číselná.',
		confirmNewPage	: 'Jakékoliv neuložené změny obsahu budou ztraceny. Skutečně chcete otevřít novou stránku?',
		confirmCancel	: 'Některá z nastavení byla změněna. Skutečně chcete zavřít dialogové okno?',
		options			: 'Nastavení',
		target			: 'Cíl',
		targetNew		: 'Nové okno (_blank)',
		targetTop		: 'Okno nejvyšší úrovně (_top)',
		targetSelf		: 'Stejné okno (_self)',
		targetParent	: 'Rodičovské okno (_parent)',
		langDirLTR		: 'Zleva doprava (LTR)',
		langDirRTL		: 'Zprava doleva (RTL)',
		styles			: 'Styly',
		cssClasses		: 'Třídy stylů',
		width			: 'Šířka',
		height			: 'Výška',
		align			: 'Zarovnání',
		alignLeft		: 'Vlevo',
		alignRight		: 'Vpravo',
		alignCenter		: 'Na střed',
		alignTop		: 'Nahoru',
		alignMiddle		: 'Na střed',
		alignBottom		: 'Dolů',
		invalidValue	: 'Neplatná hodnota.',
		invalidHeight	: 'Zadaná výška musí být číslo.',
		invalidWidth	: 'Šířka musí být číslo.',
		invalidCssLength	: 'Hodnota určená pro pole "%1" musí být kladné číslo bez nebo s platnou jednotkou míry CSS (px, %, in, cm, mm, em, ex, pt, nebo pc).',
		invalidHtmlLength	: 'Hodnota určená pro pole "%1" musí být kladné číslo bez nebo s platnou jednotkou míry HTML (px nebo %).',
		invalidInlineStyle	: 'Hodnota určená pro řádkový styl se musí skládat z jedné nebo více n-tic ve formátu "název : hodnota", oddělené středníky',
		cssLengthTooltip	: 'Zadejte číslo jako hodnotu v pixelech nebo číslo s platnou jednotkou CSS (px, %, v cm, mm, em, ex, pt, nebo pc).',

		// Put the voice-only part of the label in the span.
		unavailable		: '%1<span class="cke_accessibility">, nedostupné</span>'
	},

	contextmenu :
	{
		options : 'Nastavení kontextové nabídky'
	},

	// Special char dialog.
	specialChar		:
	{
		toolbar		: 'Vložit speciální znaky',
		title		: 'Výběr speciálního znaku',
		options : 'Nastavení speciálních znaků'
	},

	// Link dialog.
	link :
	{
		toolbar		: 'Odkaz',
		other 		: '<jiný>',
		menu		: 'Změnit odkaz',
		title		: 'Odkaz',
		info		: 'Informace o odkazu',
		target		: 'Cíl',
		upload		: 'Odeslat',
		advanced	: 'Rozšířené',
		type		: 'Typ odkazu',
		toUrl		: 'URL',
		toAnchor	: 'Kotva v této stránce',
		toEmail		: 'E-mail',
		targetFrame		: '<rámec>',
		targetPopup		: '<vyskakovací okno>',
		targetFrameName	: 'Název cílového rámu',
		targetPopupName	: 'Název vyskakovacího okna',
		popupFeatures	: 'Vlastnosti vyskakovacího okna',
		popupResizable	: 'Umožňující měnit velikost',
		popupStatusBar	: 'Stavový řádek',
		popupLocationBar: 'Panel umístění',
		popupToolbar	: 'Panel nástrojů',
		popupMenuBar	: 'Panel nabídky',
		popupFullScreen	: 'Celá obrazovka (IE)',
		popupScrollBars	: 'Posuvníky',
		popupDependent	: 'Závislost (Netscape)',
		popupLeft		: 'Levý okraj',
		popupTop		: 'Horní okraj',
		id				: 'Id',
		langDir			: 'Směr jazyka',
		langDirLTR		: 'Zleva doprava (LTR)',
		langDirRTL		: 'Zprava doleva (RTL)',
		acccessKey		: 'Přístupový klíč',
		name			: 'Jméno',
		langCode			: 'Kód jazyka',
		tabIndex			: 'Pořadí prvku',
		advisoryTitle		: 'Pomocný titulek',
		advisoryContentType	: 'Pomocný typ obsahu',
		cssClasses		: 'Třída stylu',
		charset			: 'Přiřazená znaková sada',
		styles			: 'Styl',
		rel			: 'Vztah',
		selectAnchor		: 'Vybrat kotvu',
		anchorName		: 'Podle jména kotvy',
		anchorId			: 'Podle Id objektu',
		emailAddress		: 'E-mailová adresa',
		emailSubject		: 'Předmět zprávy',
		emailBody		: 'Tělo zprávy',
		noAnchors		: '(Ve stránce není definována žádná kotva!)',
		noUrl			: 'Zadejte prosím URL odkazu',
		noEmail			: 'Zadejte prosím e-mailovou adresu'
	},

	// Anchor dialog
	anchor :
	{
		toolbar		: 'Záložka',
		menu		: 'Vlastnosti záložky',
		title		: 'Vlastnosti záložky',
		name		: 'Název záložky',
		errorName	: 'Zadejte prosím název záložky',
		remove		: 'Odstranit záložku'
	},

	// List style dialog
	list:
	{
		numberedTitle		: 'Vlastnosti číslování',
		bulletedTitle		: 'Vlastnosti odrážek',
		type				: 'Typ',
		start				: 'Počátek',
		validateStartNumber				:'Číslování musí začínat celým číslem.',
		circle				: 'Kroužky',
		disc				: 'Kolečka',
		square				: 'Čtverce',
		none				: 'Nic',
		notset				: '<nenastaveno>',
		armenian			: 'Arménské',
		georgian			: 'Gruzínské (an, ban, gan, atd.)',
		lowerRoman			: 'Malé římské (i, ii, iii, iv, v, atd.)',
		upperRoman			: 'Velké římské (I, II, III, IV, V, atd.)',
		lowerAlpha			: 'Malá latinka (a, b, c, d, e, atd.)',
		upperAlpha			: 'Velká latinka (A, B, C, D, E, atd.)',
		lowerGreek			: 'Malé řecké (alpha, beta, gamma, atd.)',
		decimal				: 'Arabská čísla (1, 2, 3, atd.)',
		decimalLeadingZero	: 'Arabská čísla uvozená nulou (01, 02, 03, atd.)'
	},

	// Find And Replace Dialog
	findAndReplace :
	{
		title				: 'Najít a nahradit',
		find				: 'Hledat',
		replace				: 'Nahradit',
		findWhat			: 'Co hledat:',
		replaceWith			: 'Čím nahradit:',
		notFoundMsg			: 'Hledaný text nebyl nalezen.',
		findOptions			: 'Možnosti hledání',
		matchCase			: 'Rozlišovat velikost písma',
		matchWord			: 'Pouze celá slova',
		matchCyclic			: 'Procházet opakovaně',
		replaceAll			: 'Nahradit vše',
		replaceSuccessMsg	: '%1 nahrazení.'
	},

	// Table Dialog
	table :
	{
		toolbar		: 'Tabulka',
		title		: 'Vlastnosti tabulky',
		menu		: 'Vlastnosti tabulky',
		deleteTable	: 'Smazat tabulku',
		rows		: 'Řádky',
		columns		: 'Sloupce',
		border		: 'Ohraničení',
		widthPx		: 'bodů',
		widthPc		: 'procent',
		widthUnit	: 'jednotka šířky',
		cellSpace	: 'Vzdálenost buněk',
		cellPad		: 'Odsazení obsahu v buňce',
		caption		: 'Popis',
		summary		: 'Souhrn',
		headers		: 'Záhlaví',
		headersNone		: 'Žádné',
		headersColumn	: 'První sloupec',
		headersRow		: 'První řádek',
		headersBoth		: 'Obojí',
		invalidRows		: 'Počet řádků musí být číslo větší než 0.',
		invalidCols		: 'Počet sloupců musí být číslo větší než 0.',
		invalidBorder	: 'Zdaná velikost okraje musí být číselná.',
		invalidWidth	: 'Šířka tabulky musí být číslo.',
		invalidHeight	: 'Zadaná výška tabulky musí být číselná.',
		invalidCellSpacing	: 'Zadaná vzdálenost buněk musí být číselná.',
		invalidCellPadding	: 'Zadané odsazení obsahu v buňce musí být číselné.',

		cell :
		{
			menu			: 'Buňka',
			insertBefore	: 'Vložit buňku před',
			insertAfter		: 'Vložit buňku za',
			deleteCell		: 'Smazat buňky',
			merge			: 'Sloučit buňky',
			mergeRight		: 'Sloučit doprava',
			mergeDown		: 'Sloučit dolů',
			splitHorizontal	: 'Rozdělit buňky vodorovně',
			splitVertical	: 'Rozdělit buňky svisle',
			title			: 'Vlastnosti buňky',
			cellType		: 'Typ buňky',
			rowSpan			: 'Spojit řádky',
			colSpan			: 'Spojit sloupce',
			wordWrap		: 'Zalamování',
			hAlign			: 'Vodorovné zarovnání',
			vAlign			: 'Svislé zarovnání',
			alignBaseline	: 'Na účaří',
			bgColor			: 'Barva pozadí',
			borderColor		: 'Barva okraje',
			data			: 'Data',
			header			: 'Hlavička',
			yes				: 'Ano',
			no				: 'Ne',
			invalidWidth	: 'Šířka buňky musí být číslo.',
			invalidHeight	: 'Zadaná výška buňky musí být číslená.',
			invalidRowSpan	: 'Zadaný počet sloučených řádků musí být celé číslo.',
			invalidColSpan	: 'Zadaný počet sloučených sloupců musí být celé číslo.',
			chooseColor		: 'Výběr'
		},

		row :
		{
			menu			: 'Řádek',
			insertBefore	: 'Vložit řádek před',
			insertAfter		: 'Vložit řádek za',
			deleteRow		: 'Smazat řádky'
		},

		column :
		{
			menu			: 'Sloupec',
			insertBefore	: 'Vložit sloupec před',
			insertAfter		: 'Vložit sloupec za',
			deleteColumn	: 'Smazat sloupec'
		}
	},

	// Button Dialog.
	button :
	{
		title		: 'Vlastnosti tlačítka',
		text		: 'Popisek',
		type		: 'Typ',
		typeBtn		: 'Tlačítko',
		typeSbm		: 'Odeslat',
		typeRst		: 'Obnovit'
	},

	// Checkbox and Radio Button Dialogs.
	checkboxAndRadio :
	{
		checkboxTitle : 'Vlastnosti zaškrtávacího políčka',
		radioTitle	: 'Vlastnosti přepínače',
		value		: 'Hodnota',
		selected	: 'Zaškrtnuto'
	},

	// Form Dialog.
	form :
	{
		title		: 'Vlastnosti formuláře',
		menu		: 'Vlastnosti formuláře',
		action		: 'Akce',
		method		: 'Metoda',
		encoding	: 'Kódování'
	},

	// Select Field Dialog.
	select :
	{
		title		: 'Vlastnosti seznamu',
		selectInfo	: 'Info',
		opAvail		: 'Dostupná nastavení',
		value		: 'Hodnota',
		size		: 'Velikost',
		lines		: 'Řádků',
		chkMulti	: 'Povolit mnohonásobné výběry',
		opText		: 'Text',
		opValue		: 'Hodnota',
		btnAdd		: 'Přidat',
		btnModify	: 'Změnit',
		btnUp		: 'Nahoru',
		btnDown		: 'Dolů',
		btnSetValue : 'Nastavit jako vybranou hodnotu',
		btnDelete	: 'Smazat'
	},

	// Textarea Dialog.
	textarea :
	{
		title		: 'Vlastnosti textové oblasti',
		cols		: 'Sloupců',
		rows		: 'Řádků'
	},

	// Text Field Dialog.
	textfield :
	{
		title		: 'Vlastnosti textového pole',
		name		: 'Název',
		value		: 'Hodnota',
		charWidth	: 'Šířka ve znacích',
		maxChars	: 'Maximální počet znaků',
		type		: 'Typ',
		typeText	: 'Text',
		typePass	: 'Heslo'
	},

	// Hidden Field Dialog.
	hidden :
	{
		title	: 'Vlastnosti skrytého pole',
		name	: 'Název',
		value	: 'Hodnota'
	},

	// Image Dialog.
	image :
	{
		title		: 'Vlastnosti obrázku',
		titleButton	: 'Vlastností obrázkového tlačítka',
		menu		: 'Vlastnosti obrázku',
		infoTab		: 'Informace o obrázku',
		btnUpload	: 'Odeslat na server',
		upload		: 'Odeslat',
		alt			: 'Alternativní text',
		lockRatio	: 'Zámek',
		resetSize	: 'Původní velikost',
		border		: 'Okraje',
		hSpace		: 'Horizontální mezera',
		vSpace		: 'Vertikální mezera',
		alertUrl	: 'Zadejte prosím URL obrázku',
		linkTab		: 'Odkaz',
		button2Img	: 'Skutečně chcete převést zvolené obrázkové tlačítko na obyčejný obrázek?',
		img2Button	: 'Skutečně chcete převést zvolený obrázek na obrázkové tlačítko?',
		urlMissing	: 'Zadané URL zdroje obrázku nebylo nalezeno.',
		validateBorder	: 'Okraj musí být nastaven v celých číslech.',
		validateHSpace	: 'Horizontální mezera musí být nastavena v celých číslech.',
		validateVSpace	: 'Vertikální mezera musí být nastavena v celých číslech.'
	},

	// Flash Dialog
	flash :
	{
		properties		: 'Vlastnosti Flashe',
		propertiesTab	: 'Vlastnosti',
		title			: 'Vlastnosti Flashe',
		chkPlay			: 'Automatické spuštění',
		chkLoop			: 'Opakování',
		chkMenu			: 'Nabídka Flash',
		chkFull			: 'Povolit celoobrazovkový režim',
 		scale			: 'Zobrazit',
		scaleAll		: 'Zobrazit vše',
		scaleNoBorder	: 'Bez okraje',
		scaleFit		: 'Přizpůsobit',
		access			: 'Přístup ke skriptu',
		accessAlways	: 'Vždy',
		accessSameDomain: 'Ve stejné doméně',
		accessNever		: 'Nikdy',
		alignAbsBottom	: 'Zcela dolů',
		alignAbsMiddle	: 'Doprostřed',
		alignBaseline	: 'Na účaří',
		alignTextTop	: 'Na horní okraj textu',
		quality			: 'Kvalita',
		qualityBest		: 'Nejlepší',
		qualityHigh		: 'Vysoká',
		qualityAutoHigh	: 'Vysoká - auto',
		qualityMedium	: 'Střední',
		qualityAutoLow	: 'Nízká - auto',
		qualityLow		: 'Nejnižší',
		windowModeWindow: 'Okno',
		windowModeOpaque: 'Neprůhledné',
		windowModeTransparent : 'Průhledné',
		windowMode		: 'Režim okna',
		flashvars		: 'Proměnné pro Flash',
		bgcolor			: 'Barva pozadí',
		hSpace			: 'Horizontální mezera',
		vSpace			: 'Vertikální mezera',
		validateSrc		: 'Zadejte prosím URL odkazu',
		validateHSpace	: 'Zadaná horizontální mezera musí být číslo.',
		validateVSpace	: 'Zadaná vertikální mezera musí být číslo.'
	},

	// Speller Pages Dialog
	spellCheck :
	{
		toolbar			: 'Zkontrolovat pravopis',
		title			: 'Kontrola pravopisu',
		notAvailable	: 'Omlouváme se, ale služba nyní není dostupná.',
		errorLoading	: 'Chyba nahrávání služby aplikace z: %s.',
		notInDic		: 'Není ve slovníku',
		changeTo		: 'Změnit na',
		btnIgnore		: 'Přeskočit',
		btnIgnoreAll	: 'Přeskakovat vše',
		btnReplace		: 'Zaměnit',
		btnReplaceAll	: 'Zaměňovat vše',
		btnUndo			: 'Zpět',
		noSuggestions	: '- žádné návrhy -',
		progress		: 'Probíhá kontrola pravopisu...',
		noMispell		: 'Kontrola pravopisu dokončena: Žádné pravopisné chyby nenalezeny',
		noChanges		: 'Kontrola pravopisu dokončena: Beze změn',
		oneChange		: 'Kontrola pravopisu dokončena: Jedno slovo změněno',
		manyChanges		: 'Kontrola pravopisu dokončena: %1 slov změněno',
		ieSpellDownload	: 'Kontrola pravopisu není nainstalována. Chcete ji nyní stáhnout?'
	},

	smiley :
	{
		toolbar	: 'Smajlíci',
		title	: 'Vkládání smajlíků',
		options : 'Nastavení smajlíků'
	},

	elementsPath :
	{
		eleLabel : 'Cesta objektu',
		eleTitle : '%1 objekt'
	},

	numberedlist	: 'Číslování',
	bulletedlist	: 'Odrážky',
	indent			: 'Zvětšit odsazení',
	outdent			: 'Zmenšit odsazení',

	justify :
	{
		left	: 'Zarovnat vlevo',
		center	: 'Zarovnat na střed',
		right	: 'Zarovnat vpravo',
		block	: 'Zarovnat do bloku'
	},

	blockquote : 'Citace',

	clipboard :
	{
		title		: 'Vložit',
		cutError	: 'Bezpečnostní nastavení vašeho prohlížeče nedovolují editoru spustit funkci pro vyjmutí zvoleného textu do schránky. Prosím vyjměte zvolený text do schránky pomocí klávesnice (Ctrl/Cmd+X).',
		copyError	: 'Bezpečnostní nastavení vašeho prohlížeče nedovolují editoru spustit funkci pro kopírování zvoleného textu do schránky. Prosím zkopírujte zvolený text do schránky pomocí klávesnice (Ctrl/Cmd+C).',
		pasteMsg	: 'Do následujícího pole vložte požadovaný obsah pomocí klávesnice (<STRONG>Ctrl/Cmd+V</STRONG>) a stiskněte <STRONG>OK</STRONG>.',
		securityMsg	: 'Z důvodů nastavení bezpečnosti vašeho prohlížeče nemůže editor přistupovat přímo do schránky. Obsah schránky prosím vložte znovu do tohoto okna.',
		pasteArea	: 'Oblast vkládání'
	},

	pastefromword :
	{
		confirmCleanup	: 'Jak je vidět, vkládaný text je kopírován z Wordu. Chcete jej před vložením vyčistit?',
		toolbar			: 'Vložit z Wordu',
		title			: 'Vložit z Wordu',
		error			: 'Z důvodu vnitřní chyby nebylo možné provést vyčištění vkládaného textu.'
	},

	pasteText :
	{
		button	: 'Vložit jako čistý text',
		title	: 'Vložit jako čistý text'
	},

	templates :
	{
		button			: 'Šablony',
		title			: 'Šablony obsahu',
		options : 'Nastavení šablon',
		insertOption	: 'Nahradit aktuální obsah',
		selectPromptMsg	: 'Prosím zvolte šablonu pro otevření v editoru<br>(aktuální obsah editoru bude ztracen):',
		emptyListMsg	: '(Není definována žádná šablona)'
	},

	showBlocks : 'Ukázat bloky',

	stylesCombo :
	{
		label		: 'Styl',
		panelTitle	: 'Formátovací styly',
		panelTitle1	: 'Blokové styly',
		panelTitle2	: 'Řádkové styly',
		panelTitle3	: 'Objektové styly'
	},

	format :
	{
		label		: 'Formát',
		panelTitle	: 'Formát',

		tag_p		: 'Normální',
		tag_pre		: 'Naformátováno',
		tag_address	: 'Adresa',
		tag_h1		: 'Nadpis 1',
		tag_h2		: 'Nadpis 2',
		tag_h3		: 'Nadpis 3',
		tag_h4		: 'Nadpis 4',
		tag_h5		: 'Nadpis 5',
		tag_h6		: 'Nadpis 6',
		tag_div		: 'Normální (DIV)'
	},

	div :
	{
		title				: 'Vytvořit Div kontejner',
		toolbar				: 'Vytvořit Div kontejner',
		cssClassInputLabel	: 'Třídy stylů',
		styleSelectLabel	: 'Styly',
		IdInputLabel		: 'Id',
		languageCodeInputLabel	: ' Kód jazyka',
		inlineStyleInputLabel	: 'Vnitřní styly',
		advisoryTitleInputLabel	: 'Nápovědní titulek',
		langDirLabel		: 'Směr jazyka',
		langDirLTRLabel		: 'Zleva doprava (LTR)',
		langDirRTLLabel		: 'Zprava doleva (RTL)',
		edit				: 'Změnit Div',
		remove				: 'Odstranit Div'
  	},

	iframe :
	{
		title		: 'Vlastnosti IFrame',
		toolbar		: 'IFrame',
		noUrl		: 'Zadejte prosím URL obsahu pro IFrame',
		scrolling	: 'Zapnout posuvníky',
		border		: 'Zobrazit okraj'
	},

	font :
	{
		label		: 'Písmo',
		voiceLabel	: 'Písmo',
		panelTitle	: 'Písmo'
	},

	fontSize :
	{
		label		: 'Velikost',
		voiceLabel	: 'Velikost písma',
		panelTitle	: 'Velikost'
	},

	colorButton :
	{
		textColorTitle	: 'Barva textu',
		bgColorTitle	: 'Barva pozadí',
		panelTitle		: 'Barvy',
		auto			: 'Automaticky',
		more			: 'Více barev...'
	},

	colors :
	{
		'000' : 'Černá',
		'800000' : 'Kaštanová',
		'8B4513' : 'Sedlová hněď',
		'2F4F4F' : 'Tmavě bledě šedá',
		'008080' : 'Čírka',
		'000080' : 'Námořnická modř',
		'4B0082' : 'Inkoustová',
		'696969' : 'Tmavě šedá',
		'B22222' : 'Pálená cihla',
		'A52A2A' : 'Hnědá',
		'DAA520' : 'Zlatý prut',
		'006400' : 'Tmavě zelená',
		'40E0D0' : 'Tyrkisová',
		'0000CD' : 'Středně modrá',
		'800080' : 'Purpurová',
		'808080' : 'Šedá',
		'F00' : 'Červená',
		'FF8C00' : 'Tmavě oranžová',
		'FFD700' : 'Zlatá',
		'008000' : 'Zelená',
		'0FF' : 'Azurová',
		'00F' : 'Modrá',
		'EE82EE' : 'Fialová',
		'A9A9A9' : 'Kalně šedá',
		'FFA07A' : 'Světle lososová',
		'FFA500' : 'Oranžová',
		'FFFF00' : 'Žlutá',
		'00FF00' : 'Limetková',
		'AFEEEE' : 'Bledě tyrkisová',
		'ADD8E6' : 'Světle modrá',
		'DDA0DD' : 'Švestková',
		'D3D3D3' : 'Světle šedá',
		'FFF0F5' : 'Levandulově ruměnná',
		'FAEBD7' : 'Antická bílá',
		'FFFFE0' : 'Světle žlutá',
		'F0FFF0' : 'Medová rosa',
		'F0FFFF' : 'Azurová',
		'F0F8FF' : 'Alenčina modrá',
		'E6E6FA' : 'Levandulová',
		'FFF' : 'Bílá'
	},

	scayt :
	{
		title			: 'Kontrola pravopisu během psaní (SCAYT)',
		opera_title		: 'Toto Opera nepodporuje',
		enable			: 'Zapnout SCAYT',
		disable			: 'Vypnout SCAYT',
		about			: 'O aplikaci SCAYT',
		toggle			: 'Vypínač SCAYT',
		options			: 'Nastavení',
		langs			: 'Jazyky',
		moreSuggestions	: 'Více návrhů',
		ignore			: 'Přeskočit',
		ignoreAll		: 'Přeskočit vše',
		addWord			: 'Přidat slovo',
		emptyDic		: 'Název slovníku nesmí být prázdný.',

		optionsTab		: 'Nastavení',
		allCaps			: 'Ignorovat slova tvořená velkými písmeny',
		ignoreDomainNames : 'Ignorovat doménová jména',
		mixedCase		: 'Ignorovat slova obsahující různou velikost písma',
		mixedWithDigits	: 'Ignorovat slova obsahující čísla',

		languagesTab	: 'Jazyky',

		dictionariesTab	: 'Slovníky',
		dic_field_name	: 'Název slovníku',
		dic_create		: 'Vytvořit',
		dic_restore		: 'Obnovit',
		dic_delete		: 'Smazat',
		dic_rename		: 'Přejmenovat',
		dic_info		: 'Zpočátku se uživatelský slovník ukládá do cookies ve vašem prohlížeči. Ovšem cookies mají omezenou velikost, takže když slovník dosáhne velikosti, kdy se již do cookies nevejde, může být uložen na našem serveru. Chcete-li uložit váš osobní slovník na našem serveru, je třeba slovník nejdříve pojmenovat. Máte-li již slovník pojmenován a uložen, zadejte jeho název a klepněte na tlačítko Obnovit.',

		aboutTab		: 'O aplikaci'
	},

	about :
	{
		title		: 'O aplikaci CKEditor',
		dlgTitle	: 'O aplikaci CKEditor',
		help	: 'Prohlédněte si $1 pro nápovědu.',
		userGuide : 'Uživatelská příručka CKEditor',
		moreInfo	: 'Pro informace o lincenci navštivte naši webovou stránku:',
		copy		: 'Copyright &copy; $1. All rights reserved.'
	},

	maximize : 'Maximalizovat',
	minimize : 'Minimalizovat',

	fakeobjects :
	{
		anchor		: 'Záložka',
		flash		: 'Flash animace',
		iframe		: 'IFrame',
		hiddenfield	: 'Skryté pole',
		unknown		: 'Neznámý objekt'
	},

	resize : 'Uchopit pro změnu velikosti',

	colordialog :
	{
		title		: 'Výběr barvy',
		options	:	'Nastavení barvy',
		highlight	: 'Zvýraznit',
		selected	: 'Vybráno',
		clear		: 'Vyčistit'
	},

	toolbarCollapse	: 'Skrýt panel nástrojů',
	toolbarExpand	: 'Zobrazit panel nástrojů',

	toolbarGroups :
	{
		document : 'Dokument',
		clipboard : 'Schránka/Zpět',
		editing : 'Úpravy',
		forms : 'Formuláře',
		basicstyles : 'Základní styly',
		paragraph : 'Odstavec',
		links : 'Odkazy',
		insert : 'Vložit',
		styles : 'Styly',
		colors : 'Barvy',
		tools : 'Nástroje'
	},

	bidi :
	{
		ltr : 'Směr textu zleva doprava',
		rtl : 'Směr textu zprava doleva'
	},

	docprops :
	{
		label : 'Vlastnosti dokumentu',
		title : 'Vlastnosti dokumentu',
		design : 'Vzhled',
		meta : 'Metadata',
		chooseColor : 'Výběr',
		other : '<jiný>',
		docTitle :	'Titulek stránky',
		charset : 	'Znaková sada',
		charsetOther : 'Další znaková sada',
		charsetASCII : 'ASCII',
		charsetCE : 'Středoevropské jazyky',
		charsetCT : 'Tradiční čínština (Big5)',
		charsetCR : 'Cyrilice',
		charsetGR : 'Řečtina',
		charsetJP : 'Japonština',
		charsetKR : 'Korejština',
		charsetTR : 'Turečtina',
		charsetUN : 'Unicode (UTF-8)',
		charsetWE : 'Západoevropské jazyky',
		docType : 'Typ dokumentu',
		docTypeOther : 'Jiný typ dokumetu',
		xhtmlDec : 'Zahrnout deklarace XHTML',
		bgColor : 'Barva pozadí',
		bgImage : 'URL obrázku na pozadí',
		bgFixed : 'Nerolovatelné (Pevné) pozadí',
		txtColor : 'Barva textu',
		margin : 'Okraje stránky',
		marginTop : 'Horní',
		marginLeft : 'Levý',
		marginRight : 'Pravý',
		marginBottom : 'Dolní',
		metaKeywords : 'Klíčová slova (oddělená čárkou)',
		metaDescription : 'Popis dokumentu',
		metaAuthor : 'Autor',
		metaCopyright : 'Autorská práva',
		previewHtml : '<p>Toto je <strong>ukázkový text</strong>. Používáte <a href="javascript:void(0)">CKEditor</a>.</p>'
	}
};
