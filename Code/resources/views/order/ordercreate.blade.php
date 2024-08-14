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

<script>
    // Function to increment the value in the textbox
    function increment() {
        let currentValue = parseInt(document.getElementById('counter').value);
        currentValue++;
        document.getElementById('counter').value = currentValue;
        return false;
    }
</script>
</head>
<body>

    <header>
        <h1>Order</h1>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>

    <form action="{{ url('/Order/OrderAddAction') }}" method="post">
        @csrf
        <input type="text" name ="table_id" value="{{intval($tbltransinfo->table_id)}}" hidden>
        <input type="text" name ="order_id" value="{{intval($orderid)}}" hidden>
        <label for="ItemName">Item Name:</label>
        <select name="item_id" id="item_id">
            @foreach ($itemmaster as $im)
                <option value="{{ intval($im->id) }}">{{$im->ItemName}}</option>
            @endforeach
        </select>

        <input type="text" id="item_order" name="item_order" value="0" hidden>
        <input type="text" id="counter" name="qty" value="0" readonly>
        <button onclick="return increment()">Increment</button>


        <input type="text" name="Comp_Id" value="1" hidden required>
        <button type="submit">Add</button>
    </form>



</body>
</html>
