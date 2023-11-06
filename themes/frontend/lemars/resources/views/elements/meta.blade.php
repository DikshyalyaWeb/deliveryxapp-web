<meta name="keywords" content="{{ !empty($seoMeta) ? $seoMeta['meta_keywords'] : '' }}"/>
<meta name="description" content="{{ !empty($seoMeta) ? $seoMeta['meta_descriptions'] : '' }}"/>
@if(config('Reading.public_blog_search'))
    <meta name="robots" content="noindex,nofollow"/>
@endif
<meta name="author" content="{{ !empty($seoMeta) ? $seoMeta['author'] : '' }}">
<meta name="url" content="{{ request()->fullUrl() }}">
<meta property="og:title" content="{{ !empty($seoMeta) ? $seoMeta['meta_keywords'] : '' }}"/>
<meta property="og:description" content="{{ !empty($seoMeta) ? $seoMeta['meta_descriptions'] : '' }}"/>
<meta property="og:image" content="{{ !empty($seoMeta) ? $seoMeta['image'] : '' }}" />
<meta property="og:sitename" content="{{ config('Site.title') }}" />
<meta property="og:url" content="{{ request()->fullUrl() }}"/>