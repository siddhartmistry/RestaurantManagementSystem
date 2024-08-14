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
                    <h3 class="card-title font-weight-bold">Room Type : {{ $TGinfo->roomtype }}</h3>
                    <h3 class="card-title font-weight-bold">Table Type : {{ $TGinfo->tabletype }}</h3>
                    <h3 class="card-title font-weight-bold">Person : {{ $TGinfo->person }} person can sit<h3>
                    <h3 class="card-title font-weight-bold">
                        Status :
                        @if($TGinfo->isactive == 1)
                             Active
                        @elseif($TGinfo->isactive == 0)
                            Deactive
                        @endif
                    </h3>
                    <a href="/Table/TableGroups" class="btn btn-primary">Back to List</a>
                </div>

            </div>

        </ul>
    </div>



    <!-- Add other HTML content as needed -->

</body>
</html>
