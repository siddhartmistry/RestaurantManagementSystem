<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Item Master</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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

    </style>
</head>
<body>
    <header>
        <h2>Item Group List</h2>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>
    <div class="container mt-5">
        <a href="/Item/ItemGroupCreate" class="btn btn-primary">Add Item</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Item Group Name</th>
                </tr>
            </thead>
            <tbody>
                @foreach($itemgroup as $item)
                    <tr>
                        <td>{{ $item->id }}</td>
                        <td>{{ $item->ItemGroupName }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- Add other HTML content as needed -->
</body>
</html>
