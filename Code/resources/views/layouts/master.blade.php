<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'Your App Title')</title>
    <!-- Add your CSS styles or include a CSS file here -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>

    <!-- Include a navigation bar or any common elements -->
    @include('partials.navbar')

    <div class="container mt-4">
        <!-- Content section that can be overridden by child views -->
        @yield('content')
    </div>

    <!-- Add your JS scripts or include a JS file here -->
    <script src="{{ asset('js/app.js') }}"></script>
</body>
</html>
