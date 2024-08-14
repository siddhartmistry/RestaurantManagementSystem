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
        <h2>Item Detail List</h2>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>
    <div class="container mt-5">
        <a href="/Item/ItemMasterCreate" class="btn btn-primary">Add Item</a>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Description</th>
                    <th>Group ID</th>
                    <th>Rate</th>
                    <th>Discount</th>
                    <th>TAX</th>
                    <th>Amount</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($itemList as $item)
                    <tr>
                        <td>{{ $item->ItemName }}</td>
                        <td>{{ $item->Description }}</td>
                        <td>{{ $item->ItemGroupName }}</td>
                        <td>{{ $item->Rate }}</td>
                        <td>{{ $item->Discount }}</td>
                        <td>{{ $item->TAX }}</td>
                        <td>{{ $item->Amount }}</td>
                        <td>
                            <a href="/Item/ItemMasterUpdate?id={{ $item->id }}" class="btn btn-primary">Edit</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    <!-- Add other HTML content as needed -->
</body>
</html>
