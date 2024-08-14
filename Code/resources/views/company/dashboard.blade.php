<!-- resources/views/dashboard.blade.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            width: 100%;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1rem;
        }

        nav {
            background-color: #555;
            color: white;
            padding: 0.5rem;
            text-align: center;
        }

        main {
            padding: 1rem;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1rem;
            margin: 1rem;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: white;
        }
        a {
            text-decoration: none; /* Remove underline */
            color: #0088cc; /* Change text color to your preferred color */
        }
        a:hover {
            color: #000890; /* Change text color on hover to your preferred color */
        }
    </style>
</head>
<body>

    <header>
        <h1>Restaurant Dashboard</h1>
        <a href="/logoff">logout</a>
    </header>

    {{-- <nav>
        <a href="#overview">Overview</a>
        <a href="#menu">Menu</a>
        <a href="#orders">Orders</a>
        <a href="#analytics">Analytics</a>
        <h2>{{ session('companyinfo') }}</h2>
        <h2>{{ session('userinfo')}} </h2>
        <h2>{{ session('menus')}} </h2>
    </nav> --}}

    <main>
        @if(session()->has('menus'))
            @foreach(session('menus') as $key)
                <a href="{{$key->route}}">
                    <div id="{{$key->name}}" class="card">
                        <h2>{{ $key->name}} </h2>
                    </div>
                </a>
            @endforeach
        @endif

    </main>

</body>
</html>
