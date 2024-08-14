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
        <h1>Table Register</h1>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>

    <form action="{{ url('/Table/TableDetailCreateAction') }}" method="post">
        @csrf

        <label for="Name">Table Name:</label>
        <input type="text" name="name" required>

        <label>Table Group :</label>
        <select name="tablegroupid" id="tablegroup">
            @foreach ($tablegroup as $group)
                <option value="{{ intval($group->id) }}">Room : {{$group->roomtype}} | Type :  {{$group->tabletype}} | Person : {{$group->person}}</option>
            @endforeach
        </select>

        <label>Assign Table To : </label>
        <select name="assignuserid" id="assignuserid">
            @foreach ($users as $user)
                <option value="{{ intval($user->id) }}"> {{$user->User_Name}} </option>
            @endforeach
        </select>

        <label for="Charges">Charges:</label>
        <input type="number" name="charges" required>
        <input type="text" name="userid" value="{{ session('userinfo')->UserGroup_Id }}" hidden required >
        <input type="text" name="isactive" value="1" hidden required>
        <input type="text" name="isdelete" value="0" hidden required>
        <button type="submit">Add </button>
    </form>



</body>
</html>
