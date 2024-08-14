<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table Group List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha384-d3A1OB1K8PxE2RwFqzZVas2LpXJKbR6HtR1j7Pf8u7CZ1CfJSZte5qJhCjm8fuZg" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoC1w+ixHuh" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyIdQCEPu4OvNrs9g6B9b6JO+Xk47Yn2eg" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha384-d3A1OB1K8PxE2RwFqzZVas2LpXJKbR6HtR1j7Pf8u7CZ1CfJSZte5qJhCjm8fuZg" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Add your custom styles here */
        .back-button {
            display: inline-block;
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 60%;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
        }
        .add-button {
            display: inline-block;
            align-content: center;
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 60%;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
        }
        body {
            background-color: #f8f9fa;
        }
        .user-list-container {
            max-width: 600px;
            margin: 50px auto;
        }
        .user-card {
            margin-bottom: 8px;
            padding: 1px;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 1rem;
            position: relative;
        }
        .header-button {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
        }
    </style>
</head>
<body>
    <header>
        <h1>Table Groups</h1>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>



    {{-- {{$userlist}} --}}
    <div class="container mt-4">

        <ul class="list-group">
            @foreach ($TGList as $TG)
            <div class="card user-card">
                <div class="card-body">
                    <h6 class="card-title font-weight-bold">Room Type: {{ $TG->roomtype }}</h6>
                    <h6 class="card-title font-weight-bold">Table Type: {{ $TG->tabletype}}</h6>
                    <h6 class="card-title font-weight-bold">Volume: {{ $TG->person }}</h6>

                    <!-- Edit and Delete buttons with icons -->
                    <div class="btn-group mt-3">
                        <a type="button" class="btn btn-sm btn-info" href="/Table/TableGroupsInfo?id={{$TG->id}}" data-toggle="modal" data-target="#infoModal{{$TG->id}}">
                            <i class="fas fa-info"></i> Info
                        </a>
                        <a type="button" class="btn btn-sm btn-warning" href="" data-toggle="modal" data-target="#editModal{{$TG->id}}">
                            <i class="fas fa-edit"></i> Edit
                        </a>
                        <a type="button" class="btn btn-sm btn-danger" href="/Table/TableGroupsDelete?id={{$TG->id}}" data-toggle="modal" data-target="#deleteModal{{$TG->id}}">
                            <i class="fas fa-trash"></i> Delete
                        </a>
                    </div>
                </div>
            </div>
            @endforeach
        </ul>

    </div>

    <!-- Add other HTML content as needed -->

    <!-- Add confirmation scripts -->
<script>
    $('.btn-info').click(function () {
        alert("Additional information will be shown here.");
    });
    // Edit button confirmation
    $('.btn-warning').click(function () {
        var result = confirm("Are you sure you want to edit?");
        if (!result) {
            return false;
        }
        // Add your edit logic here if needed
    });

    // Delete button confirmation
    $('.btn-danger').click(function () {
        var result = confirm("Are you sure you want to delete?");
        if (!result) {
            return false;
        }
        // Add your delete logic here if needed
    });
</script>
</body>
</html>
