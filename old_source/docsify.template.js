module.exports = (options) => {
	// language=JavaScript
	// language=JavaScript
	return `<!DOCTYPE html>
	<html lang="en">
		<head>
		<meta charset = "UTF-8" >
		<title> Pragmatic Penguin Knowledge Base </title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="description"
		  content="A learning and development repository, aimed to share knowledge with other technical professionals. ">
		<meta name="viewport"
			  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
			<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/docsify@4/themes/vue.css"/>

			<link rel="icon" href="./favicon.ico" type="favicon.ico"/>

			<!-- Font awesome -->
			<link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/fontawesome.css"/>
			<link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/brands.css"/>
			<link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/regular.css"/>
			<link rel="stylesheet" href="//unpkg.com/@fortawesome/fontawesome-free/css/solid.css"/>

			<link
				href="https://fonts.googleapis.com/icon?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
				rel="stylesheet"/>

			<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/docsify-sidebar-collapse/dist/sidebar.min.css"/>
			<link
				rel="stylesheet"
				href="//cdn.jsdelivr.net/npm/docsify-changelog-plugin@latest/dist/style.css"
			/>
			<link
				rel="stylesheet"
				href="//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
			/>
			<link rel="stylesheet" href="./custom.css"/>
			<link rel="stylesheet" href="./themes/syntax.css"/>
		</head>

		<body>
			<nav></nav>
			<div id="app"></div>
			<script>
				window.$docsify = {name: '{{name}}',
				repo: 'sddevelopment-be/penguin-pragmatic-patterns',
				loadSidebar: true,
				loadNavbar : false, // IMPORTANT
				changelog : 'https://raw.githubusercontent.com/sddevelopment-be/penguin-pragmatic-patterns/b96e4da151dbb6e974e192b08d2bc0bc9dc6839c/src/X_Appendix/Changelog/v2.x.md', // path of your changelog, it can be remote as well
				mergeNavbar: false,
				alias: {'/.*/_sidebar.md': '/_sidebar.md',},
				maxLevel: 5,
				subMaxLevel: 4,
				sidebarDisplayLevel: 0,
				coverpage: true,
				homepage: '/0_Intro/HOME.md',
				auto2top: true,
				plantuml: {skin: 'classic'},
				logo: './logo_vector_trans.png',
				themeColor: 'rgb(2, 144, 232)',

				timeUpdater: {text: "_last updated: {docsify-updated}_",
				formatUpdated: "{YYYY}/{MM}/{DD}",},
				tabs: {
				persist    		: true,
				sync       		: true,
				theme      		: 'classic',
				tabComments		: true,
				tabHeadings		: true
			},
				pagination: {
				previousText: 'BACK',
				// or
				nextText: {
				'/en/': 'NEXT',
				'/': 'NEXT'
			},
				crossChapter: true,
				crossChapterText: true,
			},
				'flexible-alerts': {
				comment: {
				label: 'Comment',

				label: {
				'/en-GB/': 'Comment',
				'/': 'Comment'
			},

				icon: 'fas fa-comment',
				className: 'note'
			},
				quote: {
				label: 'Quote',

				label: {
				'/': 'Words of wisdom'
			},

				icon: 'fas fa-quote-left',
				className: 'quote'
			},
				tenet: {
				label: 'Tenet',

				label: {'/': 'Tenet'},
				icon: 'fa fa-bookmark',
				className: 'note'
			},
				stub: {
				label: 'STUB',

				label: {'/': 'stub'},
				icon: 'fa fa-spinner',
				className: 'stub'
			},
			},
				glossify: {
				debug: false,
				terminologyHeading: '###',
				replaceTitleTerms: false,
				glossaryLocation: './X_Appendix/Glossary/HOME.md'
			}
			};
			</script>
			<script src="//unpkg.com/docsify/lib/docsify.min.js"></script>
			<script src="//unpkg.com/docsify-plantuml/dist/docsify-plantuml.min.js"></script>
			<script src="//cdn.jsdelivr.net/npm/docsify/lib/plugins/zoom-image.min.js"></script>

			<!-- plugins -->
			<script src="//unpkg.com/docsify-copy-code@2"></script>
			<script src="//unpkg.com/docsify-material-icons/dist/docsify-material-icons.min.js"></script>
			<script src="//unpkg.com/@rakutentech/docsify-code-inline/dist/index.min.js"></script>
			<script src="//unpkg.com/docsify-accordify/src/index.js"></script>
			<script src="//cdn.jsdelivr.net/npm/docsify-updated@1/src/time-updater.js"></script>
			<script src="https://cdn.jsdelivr.net/npm/docsify-tabs@1"></script>
			<script src="//cdn.jsdelivr.net/npm/docsify-sidebar-collapse/dist/docsify-sidebar-collapse.min.js"></script>

			<script src="//unpkg.com/docsify-fontawesome/dist/docsify-fontawesome.min.js"></script>
			<script src="https://unpkg.com/docsify-plugin-flexible-alerts"></script>

			<script
				src="//unpkg.com/@stijn-dejongh/docsify-glossary@1.0.1/dist/@stijn-dejongh/docsify-glossary.min.js"></script>
			<script src="./footnotes.js"></script>

			<script src="//unpkg.com/prismjs/components/prism-bash.min.js"></script>
			<script src="//unpkg.com/prismjs/components/prism-php.min.js"></script>
			<script src="//unpkg.com/prismjs/components/prism-java.min.js"></script>
			<script src="//unpkg.com/prismjs/components/prism-javadoc.min.js"></script>
			<script src="//unpkg.com/prismjs/components/prism-kotlin.min.js"></script>
			<script src="//unpkg.com/prismjs/components/prism-javascript.min.js"></script>

			<script src="//unpkg.com/docsify-pagination/dist/docsify-pagination.min.js"></script>

			<script src="https://twemoji.maxcdn.com/v/14.0.2/twemoji.min.js"
					integrity="sha384-32KMvAMS4DUBcQtHG6fzADguo/tpN1Nh6BAJa2QqZc6/i0K+YPQE+bWiqBRAWuFs"
					crossorigin="anonymous"></script>
		</body>

		<script src="https://cdn.jsdelivr.net/npm/docsify-changelog-plugin@latest/dist/index.js"></script>

	</html>`;
};