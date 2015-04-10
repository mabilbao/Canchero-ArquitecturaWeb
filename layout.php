<!DOCTYPE html>
<html>
<head>
    <title>{{ isset($header['title']) && $header['title'] ? "{$header['title']} - " : "" }}Marketplace - American Kennel Club</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="/css/main.css?" type="text/css"/>

    @if ( isset($facebook) )
    <meta property="og:url" content="{{ isset($facebook['url']) && $facebook['url'] != null ? $facebook['url'] : URL::full() }}" />
    <meta property="og:title" content="{{ isset($facebook['title']) && $facebook['title'] != null ? $facebook['title'] : "American Kennel Club" }}"/>
    <meta property="og:description" content="{{ isset($facebook['description']) && $facebook['description'] != null ? $facebook['description'] : "AKC.org offers information on dog breeds, dog ownership, dog training, health, nutrition, exercise &amp; grooming, registering your dog, AKC competition events and affiliated clubs to help you discover more things to enjoy with your dog." }}"/>
    <meta property="og:image" content="{{ isset($facebook['image']) && $facebook['image'] != null ? $facebook['image'] : Config::get('constants.cover_image_default') }}"/>
    @endif
    <!-- gigya.js script should only be included once -->
    <script type="text/javascript" src="//cdns.gigya.com/js/gigya.js?apiKey={{ Config::get('gigya.api_key') }}">
        {{ json_encode(Config::get('gigya.modal_settings')) }}
    </script>

    <meta id="application-environment" data-environment="{{App::environment()}}" />
</head>

<body>

<div class='beta-banner-container'>
    <div class='beta-banner'>
        <span>Beta</span>
    </div>
    <img src='/assets/beta-banner.png' height="85" width="128" />
</div>

<nav class="mobile-nav">
    <ul class="mobile-nav-list">
        <li>
            <a class="home" href="/">Marketplace</a>
        </li>
        <li>
            <a class="home" href="http://akc.org/">Back to AKC.org</a>
        </li>
        @if( !Auth::check() )
        <li>
            <a class="home show-login" href="javascript:void(0)">
                Sign In
            </a>
        </li>
        @endif
    </ul>
    @if( Auth::check() )
    <section class="mobile-nav-steps">
        <div class="mobile-nav-step-1">
            <ul class="mobile-nav-list">
                <li><a href="#" data-step="2|mymarket">My Marketplace</a></li>
            </ul>
        </div>

        <div class="mobile-nav-step-2">
            <ul class="mobile-nav-list" data-step-target="mymarket">
                <li class="colhead"><a href="#" data-step="1">My Marketplace</a></li>
                @if( $logged_user->organization  && $logged_user->organization->isActive())
                <li><a href="/account/create">Edit Seller Profile</a></li>
                <li><a href="/account/listing">Manage Listings</a></li>
                <li><a href="/account/storefront">Manage Storefront</a></li>
                <li><a href="/account/listing/add">New Listing</a></li>
                @else
                <li><a href="/account/create">Create Seller Profile and Marketplace Store</a></li>
                @endif
                <li><a href="javascript:;" class="logout">Logout</a></li>
            </ul>
        </div>
    </section>
    @endif
</nav>

<header class="nav-container">
    <nav class="main-nav">
        <a class="logo teal icon-akc-logo" href="/"></a>
        <div class="hamburger">
            <a href="#">
                <span class="patty"></span>
                <span class="patty"></span>
                <span class="patty"></span>
            </a>
        </div>

        <ul class="top-level-nav">
            <li class="primary-nav-element">
                <a href="/">Marketplace</a>
            </li>
            <li class="primary-nav-element">
                <a href="http://akc.org/">Back to AKC.org</a>
            </li>
            @if (App::environment() == 'local' && $logged_user )
            <li style="font-size: 11px;">
                <p>Welcome {{Auth::user()->email}}</p>
                <p>Type Account: {{$logged_user->
                    anization  && Auth::user()->organization != null && $logged_user->organization->isActive()
                    ? Auth::user()->organization->subscription_type : 'Only user'}}</p>
                @if ( Session::get("isSuperUser") )
                <p style="color:red;">YOU ARE SUPERUSER!</p>
                @endif
            </li>
            @endif
            @if( Auth::check() )
            <li class="my-akc-nav">
                <ul class="button-dropdown">
                    <li class="menulet">
                        <span>My Marketplace</span>
                        <input type="hidden" value="dog" name="for">
                        <div class="flyout embed">
                            @if( $logged_user->organization && $logged_user->organization->isActive())
                            <a href="/account/create">Edit Seller Profile</a>
                            <a href="/account/listing">Manage Listings</a>
                            <a href="/account/storefront">Manage Storefront</a>
                            <a href="/account/listing/add">New Listing</a>
                            <a href="/{{$logged_user->organization->website}}">My Storefront Page</a>

                            @else
                            <a href="/account/create">Create Seller Profile and Marketplace Store</a>
                            @endif

                            <a href="javascript:;" class="logout">Logout</a>
                        </div>
                    </li>
                </ul>
            </li>
            @else
            <li class="my-akc-nav">
                <a class="show-login" href="javascript:void(0)">
                    Sign In
                </a>
            </li>
            @endif
        </ul>
    </nav>
</header>

@yield('content')



@yield('javascript')
</body>
</html>