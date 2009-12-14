﻿/*
Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

/**
 * @fileOverview Defines the {@link CKEDITOR.lang} object, for the
 * Japanese language.
 */

/**#@+
   @type String
   @example
*/

/**
 * Constains the dictionary of language entries.
 * @namespace
 */
CKEDITOR.lang['ja'] =
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
	editorTitle		: 'リッチテキストエディタ, %1',

	// Toolbar buttons without dialogs.
	source			: 'ソース',
	newPage			: '新しいページ',
	save			: '保存',
	preview			: 'プレビュー',
	cut				: '切り取り',
	copy			: 'コピー',
	paste			: '貼り付け',
	print			: '印刷',
	underline		: '下線',
	bold			: '太字',
	italic			: '斜体',
	selectAll		: 'すべて選択',
	removeFormat	: 'フォーマット削除',
	strike			: '打ち消し線',
	subscript		: '添え字',
	superscript		: '上付き文字',
	horizontalrule	: '横罫線',
	pagebreak		: '改ページ挿入',
	unlink			: 'リンク削除',
	undo			: '元に戻す',
	redo			: 'やり直し',

	// Common messages and labels.
	common :
	{
		browseServer	: 'サーバーブラウザー',
		url				: 'URL',
		protocol		: 'プロトコル',
		upload			: 'アップロード',
		uploadSubmit	: 'サーバーに送信',
		image			: 'イメージ',
		flash			: 'Flash',
		form			: 'フォーム',
		checkbox		: 'チェックボックス',
		radio		: 'ラジオボタン',
		textField		: '１行テキスト',
		textarea		: 'テキストエリア',
		hiddenField		: '不可視フィールド',
		button			: 'ボタン',
		select	: '選択フィールド',
		imageButton		: '画像ボタン',
		notSet			: '<なし>',
		id				: 'Id',
		name			: 'Name属性',
		langDir			: '文字表記の方向',
		langDirLtr		: '左から右 (LTR)',
		langDirRtl		: '右から左 (RTL)',
		langCode		: '言語コード',
		longDescr		: 'longdesc属性(長文説明)',
		cssClass		: 'スタイルシートクラス',
		advisoryTitle	: 'Title属性',
		cssStyle		: 'スタイルシート',
		ok				: 'OK',
		cancel			: 'キャンセル',
		generalTab		: '全般',
		advancedTab		: '高度な設定',
		validateNumberFailed	: '値が数ではありません',
		confirmNewPage	: '変更内容を保存せず、 新しいページを開いてもよろしいでしょうか？',
		confirmCancel	: 'オプション設定を変更しました。ダイアログを閉じてもよろしいでしょうか？',

		// Put the voice-only part of the label in the span.
		unavailable		: '%1<span class="cke_accessibility">, 利用不可能</span>'
	},

	// Special char dialog.
	specialChar		:
	{
		toolbar		: '特殊文字挿入',
		title		: '特殊文字選択'
	},

	// Link dialog.
	link :
	{
		toolbar		: 'リンク挿入/編集',
		menu		: 'リンク編集',
		title		: 'ハイパーリンク',
		info		: 'ハイパーリンク 情報',
		target		: 'ターゲット',
		upload		: 'アップロード',
		advanced	: '高度な設定',
		type		: 'リンクタイプ',
		toAnchor	: 'このページのアンカー',
		toEmail		: 'E-Mail',
		target		: 'ターゲット',
		targetNotSet	: '<なし>',
		targetFrame	: '<フレーム>',
		targetPopup	: '<ポップアップウィンドウ>',
		targetNew	: '新しいウィンドウ (_blank)',
		targetTop	: '最上位ウィンドウ (_top)',
		targetSelf	: '同じウィンドウ (_self)',
		targetParent	: '親ウィンドウ (_parent)',
		targetFrameName	: '目的のフレーム名',
		targetPopupName	: 'ポップアップウィンドウ名',
		popupFeatures	: 'ポップアップウィンドウ特徴',
		popupResizable	: 'サイズ可変',
		popupStatusBar	: 'ステータスバー',
		popupLocationBar	: 'ロケーションバー',
		popupToolbar	: 'ツールバー',
		popupMenuBar	: 'メニューバー',
		popupFullScreen	: '全画面モード(IE)',
		popupScrollBars	: 'スクロールバー',
		popupDependent	: '開いたウィンドウに連動して閉じる (Netscape)',
		popupWidth		: '幅',
		popupLeft		: '左端からの座標で指定',
		popupHeight		: '高さ',
		popupTop		: '上端からの座標で指定',
		id				: 'Id',
		langDir			: '文字表記の方向',
		langDirNotSet	: '<なし>',
		langDirLTR		: '左から右 (LTR)',
		langDirRTL		: '右から左 (RTL)',
		acccessKey		: 'アクセスキー',
		name			: 'Name属性',
		langCode		: '文字表記の方向',
		tabIndex		: 'タブインデックス',
		advisoryTitle	: 'Title属性',
		advisoryContentType	: 'Content Type属性',
		cssClasses		: 'スタイルシートクラス',
		charset			: 'リンクcharset属性',
		styles			: 'スタイルシート',
		selectAnchor	: 'アンカーを選択',
		anchorName		: 'アンカー名',
		anchorId		: 'エレメントID',
		emailAddress	: 'E-Mail アドレス',
		emailSubject	: '件名',
		emailBody		: '本文',
		noAnchors		: '(ドキュメントにおいて利用可能なアンカーはありません。)',
		noUrl			: 'リンクURLを入力してください。',
		noEmail			: 'メールアドレスを入力してください。'
	},

	// Anchor dialog
	anchor :
	{
		toolbar		: 'アンカー挿入/編集',
		menu		: 'アンカー プロパティ',
		title		: 'アンカー プロパティ',
		name		: 'アンカー名',
		errorName	: 'アンカー名を必ず入力してください。'
	},

	// Find And Replace Dialog
	findAndReplace :
	{
		title				: '検索して置換',
		find				: '検索',
		replace				: '置き換え',
		findWhat			: '検索する文字列:',
		replaceWith			: '置換えする文字列:',
		notFoundMsg			: '指定された文字列は見つかりませんでした。',
		matchCase			: '部分一致',
		matchWord			: '単語単位で一致',
		matchCyclic			: '大文字/小文字区別一致',
		replaceAll			: 'すべて置換え',
		replaceSuccessMsg	: '%1 に置換しました。'
	},

	// Table Dialog
	table :
	{
		toolbar		: 'テーブル',
		title		: 'テーブル プロパティ',
		menu		: 'テーブル プロパティ',
		deleteTable	: 'テーブル削除',
		rows		: '行',
		columns		: '列',
		border		: 'ボーダーサイズ',
		align		: 'キャプションの整列',
		alignNotSet	: '<なし>',
		alignLeft	: '左',
		alignCenter	: '中央',
		alignRight	: '右',
		width		: 'テーブル幅',
		widthPx		: 'ピクセル',
		widthPc		: 'パーセント',
		height		: 'テーブル高さ',
		cellSpace	: 'セル内余白',
		cellPad		: 'セル内間隔',
		caption		: 'ｷｬﾌﾟｼｮﾝ',
		summary		: 'テーブル目的/構造',
		headers		: 'テーブルヘッダ(th)',
		headersNone		: 'なし',
		headersColumn	: '初めの列のみ',
		headersRow		: '初めの行のみ',
		headersBoth		: '両方',
		invalidRows		: '行は0より大きな数値で入力してください。',
		invalidCols		: '列は0より大きな数値で入力してください。',
		invalidBorder	: 'ボーダーサイズは数値で入力してください。',
		invalidWidth	: 'テーブル幅は数値で入力してください。',
		invalidHeight	: 'テーブル高さは数値で入力してください。',
		invalidCellSpacing	: 'セル内余白は数値で入力してください。',
		invalidCellPadding	: 'セル内間隔は数値で入力してください。',

		cell :
		{
			menu			: 'セル',
			insertBefore	: 'セルの前に挿入',
			insertAfter		: 'セルの後に挿入',
			deleteCell		: 'セル削除',
			merge			: 'セル結合',
			mergeRight		: '右に結合',
			mergeDown		: '下に結合',
			splitHorizontal	: 'セルを水平方向分割',
			splitVertical	: 'セルを垂直方向に分割',
			title			: 'セルプロパティ',
			cellType		: 'セルタイプ',
			rowSpan			: '縦幅(行数)',
			colSpan			: '横幅(列数)',
			wordWrap		: '折り返し',
			hAlign			: 'セル横の整列',
			vAlign			: 'セル縦の整列',
			alignTop		: '上',
			alignMiddle		: '中央',
			alignBottom		: '下',
			alignBaseline	: 'ベースライン',
			bgColor			: '背景色',
			borderColor		: 'ボーダーカラー',
			data			: 'テーブルデータ(td)',
			header			: 'テーブルヘッダ(th)',
			yes				: 'Yes',
			no				: 'No',
			invalidWidth	: 'セル幅は数値で入力してください。',
			invalidHeight	: 'セル高さは数値で入力してください。',
			invalidRowSpan	: '縦幅(行数)は数値で入力してください。',
			invalidColSpan	: '横幅(列数)は数値で入力してください。',
			chooseColor : 'Choose' // MISSING
		},

		row :
		{
			menu			: '行',
			insertBefore	: '列の前に挿入',
			insertAfter		: '列の後に挿入',
			deleteRow		: '行削除'
		},

		column :
		{
			menu			: 'カラム',
			insertBefore	: 'カラムの前に挿入',
			insertAfter		: 'カラムの後に挿入',
			deleteColumn	: '列削除'
		}
	},

	// Button Dialog.
	button :
	{
		title		: 'ボタン プロパティ',
		text		: 'テキスト (値)',
		type		: 'タイプ',
		typeBtn		: 'ボタン',
		typeSbm		: '送信',
		typeRst		: 'リセット'
	},

	// Checkbox and Radio Button Dialogs.
	checkboxAndRadio :
	{
		checkboxTitle : 'チェックボックス プロパティ',
		radioTitle	: 'ラジオボタン プロパティ',
		value		: '値',
		selected	: '選択済み'
	},

	// Form Dialog.
	form :
	{
		title		: 'フォーム プロパティ',
		menu		: 'フォーム プロパティ',
		action		: 'アクション',
		method		: 'メソッド',
		encoding	: 'エンコーディング',
		target		: 'ターゲット',
		targetNotSet	: '<なし>',
		targetNew	: '新しいウィンドウ (_blank)',
		targetTop	: '最上位ウィンドウ (_top)',
		targetSelf	: '同じウィンドウ (_self)',
		targetParent	: '親ウィンドウ (_parent)'
	},

	// Select Field Dialog.
	select :
	{
		title		: '選択フィールド プロパティ',
		selectInfo	: '情報',
		opAvail		: '利用可能なオプション',
		value		: '選択項目値',
		size		: 'サイズ',
		lines		: '行',
		chkMulti	: '複数項目選択を許可',
		opText		: '選択項目名',
		opValue		: '値',
		btnAdd		: '追加',
		btnModify	: '編集',
		btnUp		: '上へ',
		btnDown		: '下へ',
		btnSetValue : '選択した値を設定',
		btnDelete	: '削除'
	},

	// Textarea Dialog.
	textarea :
	{
		title		: 'テキストエリア プロパティ',
		cols		: '列',
		rows		: '行'
	},

	// Text Field Dialog.
	textfield :
	{
		title		: '１行テキスト プロパティ',
		name		: '名前',
		value		: '値',
		charWidth	: 'サイズ',
		maxChars	: '最大長',
		type		: 'タイプ',
		typeText	: 'テキスト',
		typePass	: 'パスワード入力'
	},

	// Hidden Field Dialog.
	hidden :
	{
		title	: '不可視フィールド プロパティ',
		name	: '名前',
		value	: '値'
	},

	// Image Dialog.
	image :
	{
		title		: 'イメージ プロパティ',
		titleButton	: '画像ボタン プロパティ',
		menu		: 'イメージ プロパティ',
		infoTab	: 'イメージ 情報',
		btnUpload	: 'サーバーに送信',
		url		: 'URL',
		upload	: 'アップロード',
		alt		: '代替テキスト',
		width		: '幅',
		height	: '高さ',
		lockRatio	: 'ロック比率',
		resetSize	: 'サイズリセット',
		border	: 'ボーダー',
		hSpace	: '横間隔',
		vSpace	: '縦間隔',
		align		: '行揃え',
		alignLeft	: '左',
		alignAbsBottom: '下部(絶対的)',
		alignAbsMiddle: '中央(絶対的)',
		alignBaseline	: 'ベースライン',
		alignBottom	: '下',
		alignMiddle	: '中央',
		alignRight	: '右',
		alignTextTop	: 'テキスト上部',
		alignTop	: '上',
		preview	: 'プレビュー',
		alertUrl	: 'イメージのURLを入力してください。',
		linkTab	: 'リンク',
		button2Img	: '選択したボタンを画像に置き換えますか？',
		img2Button	: '選択した画像をボタンに置き換えますか？',
		urlMissing : 'Image source URL is missing.' // MISSING
	},

	// Flash Dialog
	flash :
	{
		properties		: 'Flash プロパティ',
		propertiesTab	: 'プロパティ',
		title		: 'Flash プロパティ',
		chkPlay		: '再生',
		chkLoop		: 'ループ再生',
		chkMenu		: 'Flashメニュー可能',
		chkFull		: 'フルスクリーン許可',
 		scale		: '拡大縮小設定',
		scaleAll		: 'すべて表示',
		scaleNoBorder	: '外が見えない様に拡大',
		scaleFit		: '上下左右にフィット',
		access			: 'スプリクトアクセス(AllowScriptAccess)',
		accessAlways	: 'すべての場合に通信可能(Always)',
		accessSameDomain	: '同一ドメインのみに通信可能(Same domain)',
		accessNever	: 'すべての場合に通信不可能(Never)',
		align		: '行揃え',
		alignLeft	: '左',
		alignAbsBottom: '下部(絶対的)',
		alignAbsMiddle: '中央(絶対的)',
		alignBaseline	: 'ベースライン',
		alignBottom	: '下',
		alignMiddle	: '中央',
		alignRight	: '右',
		alignTextTop	: 'テキスト上部',
		alignTop	: '上',
		quality		: '画質',
		qualityBest		 : '品質優先',
		qualityHigh		 : '高',
		qualityAutoHigh	 : '自動/高',
		qualityMedium	 : '中',
		qualityAutoLow	 : '自動/低',
		qualityLow		 : '低',
		windowModeWindow	 : '標準',
		windowModeOpaque	 : '背景を不透明設定',
		windowModeTransparent	 : '背景を透過設定',
		windowMode	: 'ウィンドウモード',
		flashvars	: 'フラッシュに渡す変数(FlashVars)',
		bgcolor	: '背景色',
		width	: '幅',
		height	: '高さ',
		hSpace	: '横間隔',
		vSpace	: '縦間隔',
		validateSrc : 'リンクURLを入力してください。',
		validateWidth : '幅は数値で入力してください。',
		validateHeight : '高さは数値で入力してください。',
		validateHSpace : '横間隔は数値で入力してください。',
		validateVSpace : '縦間隔は数値で入力してください。'
	},

	// Speller Pages Dialog
	spellCheck :
	{
		toolbar			: 'スペルチェック',
		title			: 'スペルチェック',
		notAvailable	: '申し訳ありません、現在サービスを利用することができません',
		errorLoading	: 'アプリケーションサービスホスト読込みエラー: %s.',
		notInDic		: '辞書にありません',
		changeTo		: '変更',
		btnIgnore		: '無視',
		btnIgnoreAll	: 'すべて無視',
		btnReplace		: '置換',
		btnReplaceAll	: 'すべて置換',
		btnUndo			: 'やり直し',
		noSuggestions	: '- 該当なし -',
		progress		: 'スペルチェック処理中...',
		noMispell		: 'スペルチェック完了: スペルの誤りはありませんでした',
		noChanges		: 'スペルチェック完了: 語句は変更されませんでした',
		oneChange		: 'スペルチェック完了: １語句変更されました',
		manyChanges		: 'スペルチェック完了: %1 語句変更されました',
		ieSpellDownload	: 'スペルチェッカーがインストールされていません。今すぐダウンロードしますか?'
	},

	smiley :
	{
		toolbar	: '絵文字',
		title	: '顔文字挿入'
	},

	elementsPath :
	{
		eleTitle : '%1 エレメント'
	},

	numberedlist : '段落番号',
	bulletedlist : '箇条書き',
	indent : 'インデント',
	outdent : 'インデント解除',

	justify :
	{
		left : '左揃え',
		center : '中央揃え',
		right : '右揃え',
		block : '両端揃え'
	},

	blockquote : 'ブロック引用',

	clipboard :
	{
		title		: '貼り付け',
		cutError	: 'ブラウザーのセキュリティ設定によりエディタの切り取り操作が自動で実行することができません。実行するには手動でキーボードの(Ctrl+X)を使用してください。',
		copyError	: 'ブラウザーのセキュリティ設定によりエディタのコピー操作が自動で実行することができません。実行するには手動でキーボードの(Ctrl+C)を使用してください。',
		pasteMsg	: 'キーボード(<STRONG>Ctrl+V</STRONG>)を使用して、次の入力エリア内で貼って、<STRONG>OK</STRONG>を押してください。',
		securityMsg	: 'ブラウザのセキュリティ設定により、エディタはクリップボード・データに直接アクセスすることができません。このウィンドウは貼り付け操作を行う度に表示されます。'
	},

	pastefromword :
	{
		toolbar : 'ワード文章から貼り付け',
		title : 'ワード文章から貼り付け',
		advice : 'キーボード(<STRONG>Ctrl+V</STRONG>)を使用して、次の入力エリア内で貼って、<STRONG>OK</STRONG>を押してください。',
		ignoreFontFace : 'FontタグのFace属性を無視します。',
		removeStyle : 'スタイル定義を削除します。'
	},

	pasteText :
	{
		button : 'プレーンテキスト貼り付け',
		title : 'プレーンテキスト貼り付け'
	},

	templates :
	{
		button : 'テンプレート(雛形)',
		title : 'テンプレート内容',
		insertOption: '現在のエディタの内容と置換えをします',
		selectPromptMsg: 'エディターで使用するテンプレートを選択してください。<br>(現在のエディタの内容は失われます):',
		emptyListMsg : '(テンプレートが定義されていません)'
	},

	showBlocks : 'ブロック表示',

	stylesCombo :
	{
		label : 'スタイル',
		voiceLabel : 'スタイル',
		panelVoiceLabel : 'スタイルを選択してください',
		panelTitle1 : 'ブロックスタイル',
		panelTitle2 : 'インラインスタイル',
		panelTitle3 : 'オブジェクトスタイル'
	},

	format :
	{
		label : 'フォーマット',
		voiceLabel : 'フォーマット',
		panelTitle : 'フォーマット',
		panelVoiceLabel : 'パラグラフ形式を選択してください。',

		tag_p : '標準',
		tag_pre : '書式付き',
		tag_address : 'アドレス',
		tag_h1 : '見出し 1',
		tag_h2 : '見出し 2',
		tag_h3 : '見出し 3',
		tag_h4 : '見出し 4',
		tag_h5 : '見出し 5',
		tag_h6 : '見出し 6',
		tag_div : '標準 (DIV)'
	},

	font :
	{
		label : 'フォント',
		voiceLabel : 'フォント',
		panelTitle : 'フォント',
		panelVoiceLabel : 'フォントを選択してください'
	},

	fontSize :
	{
		label : 'サイズ',
		voiceLabel : 'フォントサイズ',
		panelTitle : 'サイズ',
		panelVoiceLabel : 'フォントサイズを選択してください'
	},

	colorButton :
	{
		textColorTitle : 'テキスト色',
		bgColorTitle : '背景色',
		auto : '自動',
		more : 'その他の色...'
	},

	colors :
	{
		'000' : 'Black',
		'800000' : 'Maroon',
		'8B4513' : 'Saddle Brown',
		'2F4F4F' : 'Dark Slate Gray',
		'008080' : 'Teal',
		'000080' : 'Navy',
		'4B0082' : 'Indigo',
		'696969' : 'Dim Gray',
		'B22222' : 'Fire Brick',
		'A52A2A' : 'Brown',
		'DAA520' : 'Golden Rod',
		'006400' : 'Dark Green',
		'40E0D0' : 'Turquoise',
		'0000CD' : 'Medium Blue',
		'800080' : 'Purple',
		'808080' : 'Gray',
		'F00' : 'Red',
		'FF8C00' : 'Dark Orange',
		'FFD700' : 'Gold',
		'008000' : 'Green',
		'0FF' : 'Cyan',
		'00F' : 'Blue',
		'EE82EE' : 'Violet',
		'A9A9A9' : 'Dark Gray',
		'FFA07A' : 'Light Salmon',
		'FFA500' : 'Orange',
		'FFFF00' : 'Yellow',
		'00FF00' : 'Lime',
		'AFEEEE' : 'Pale Turquoise',
		'ADD8E6' : 'Light Blue',
		'DDA0DD' : 'Plum',
		'D3D3D3' : 'Light Grey',
		'FFF0F5' : 'Lavender Blush',
		'FAEBD7' : 'Antique White',
		'FFFFE0' : 'Light Yellow',
		'F0FFF0' : 'Honeydew',
		'F0FFFF' : 'Azure',
		'F0F8FF' : 'Alice Blue',
		'E6E6FA' : 'Lavender',
		'FFF' : 'White'
	},

	scayt :
	{
		title : 'スペルチェック設定(SCAYT)',
		enable : 'SCAYT有効',
		disable : 'SCAYT無効',
		about : 'SCAYTﾊﾞｰｼﾞｮﾝ',
		toggle : 'SCAYT切替',
		options : 'オプション',
		langs : '言語',
		moreSuggestions : 'More suggestions', // MISSING
		ignore : '無視',
		ignoreAll : 'すべて無視',
		addWord : '語句追加',
		emptyDic : '辞書名は必ず入力してください',
		optionsTab : 'オプション',
		languagesTab : '言語',
		dictionariesTab : '辞書',
		aboutTab : 'バージョン情報'
	},

	about :
	{
		title : 'CKEditorバージョン情報',
		dlgTitle : 'CKEditorバージョン情報',
		moreInfo : 'ライセンス情報の詳細はウェブサイトにて確認してください:',
		copy : 'Copyright &copy; $1. All rights reserved.'
	},

	maximize : '最大化',
	minimize : 'Minimize', // MISSING

	fakeobjects :
	{
		anchor : 'アンカー',
		flash : 'Flash Animation',
		div : 'Page Break',
		unknown : 'Unknown Object'
	},

	resize : 'ドラックしてリサイズ',

	colordialog :
	{
		title : 'Select color', // MISSING
		highlight : 'Highlight', // MISSING
		selected : 'Selected', // MISSING
		clear : 'Clear' // MISSING
	}
};
