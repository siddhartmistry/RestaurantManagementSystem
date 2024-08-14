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
        <h1>User Register</h1>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>

    <form action="{{ url('/User/RegisterAction') }}" method="post">
        @csrf

        <label>User Group :</label>
        <select name="UserGroup_Id" id="UserGroup_Id">
            @foreach ($usergroup as $group)
                <option value="{{ intval($group->id) }}">{{$group->name}}</option>
            @endforeach
        </select>

        <label for="User_Name">User Name:</label>
        <input type="text" name="User_Name" required>

        <label for="Email">Email:</label>
        <input type="email" name="Email" required>

        <label for="Password">Password:</label>
        <input type="password" name="Password" required>

        <label for="Type">Description:</label>
        <input type="text" name="Type" required>
        <input type="text" name="Comp_Id" value="1" hidden required>
        <input type="text" name="IsDisable" value="0" hidden required>
        <button type="submit">Register</button>
    </form>



</body>
</html>
