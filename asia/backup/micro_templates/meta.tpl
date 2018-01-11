<title>{if $title}{$title|smarty:nodefaults} - {/if}{$config.website_name}</title>

<meta http-equiv="Content-Type" content="text/html; charset={$config.charset}">
{if $description}
<meta name="description" content="{$description|smarty:nodefaults}">
{/if}
{if $keywords}
<meta name="keywords" content="{$keywords|smarty:nodefaults}">
{/if}
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Создание и продвижение сайтов Life Style">