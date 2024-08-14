<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
        form {
            width: 70%;
            padding: 20px;
            padding-left: 15%;

            /* border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }
        select{
            width:100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>

</head>
<body>

    <header>
        <h1>Item Group Register</h1>
    </header>

    <form action="{{ url('/Item/ItemGroupCreateAction') }}" method="post">
        @csrf

        <label for="ItemGroupName">Item Group Name:</label>
        <input type="text" name="ItemGroupName" required>

        <input type="text" name="Comp_Id" value="1" hidden required>
        <button type="submit">Add</button>
    </form>



</body>
</html>
