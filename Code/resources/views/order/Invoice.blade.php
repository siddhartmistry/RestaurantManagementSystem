<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Add your custom styles here */
        body {
            background-color: #f8f9fa;
        }
        .user-list-container {
            max-width: 600px;
            margin: 50px auto;
        }
        .user-card {
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
        <h1>Table Group Details</h1>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>
    {{-- {{$userlist}} --}}
    <div class="container mt-4">

        <ul class="list-group">

            <div class="card user-card">
                <div class="card-body">
                    <h1>{{ $orderdetail->CompanyName}}</h1>
                    <h4 class="card-title font-weight-bold">Order No : {{ $orderdetail->id }}</h4>
                    <h4 class="card-title font-weight-bold">Order Date : {{ $orderdetail->Order_Date }}</h4>
                    <h4 class="card-title font-weight-bold">Amount : {{ $orderdetail->Amount }} <h4>
                </div>

            </div>

        </ul>
    </div>



    <!-- Add other HTML content as needed -->

</body>
</html>
