<!DOCTYPE html>
<html>
<head>
    <title>Posts</title>
</head>
<body>
    <h1>Posts</h1>
    <ul>
        @foreach ($companies as $company)
            <li>{{ $company->Company_Name }}</li>
        @endforeach
    </ul>
</body>
</html>
