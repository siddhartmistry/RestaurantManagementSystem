<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <title>Restaurant Dashboard</title>
    <script>
        $(document).ready(function() {
            // Function to calculate the amount based on rate, discount, and tax
            function calculateAmount() {
                var rate = parseFloat($('#rate').val()) || 0;
                var discount = parseFloat($('#discount').val()) || 0;
                var tax = parseFloat($('#tax').val()) || 0;

                // Calculate amount: rate - discount + tax
                var amount = rate - discount + tax;

                // Update the amount field
                $('#amount').val(amount.toFixed(2));
            }

            // Attach the calculateAmount function to the change event of rate, discount, and tax fields
            $('#rate, #discount, #tax').change(calculateAmount);
        });
    </script>
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
        <h1>Item Register</h1>
    </header>

    <form action="{{ url('/Item/ItemMasterCreateAction') }}" method="post">
        @csrf

        <label for="ItemName">Item Name:</label>
        <input type="text" name="ItemName" required>

        <label>User Group :</label>
        <select name="Group_Id" id="Group_Id">
            @foreach ($itemgroup as $group)
                <option value="{{ intval($group->id) }}">{{$group->ItemGroupName}}</option>
            @endforeach
        </select>



        <label for="Description">Description:</label>
        <input type="text" name="Description" required>

        <label for="Rate">Rate:</label>
        <input type="number" id="rate" name="Rate" required>

        <label for="Discount">Discount:</label>
        <input type="number" id="discount" name="Discount" required>

        <label for="TAX">Tax:</label>
        <input type="number" id="tax" name="TAX" required>

        <div class="form-group">
            <label for="amount">Amount:</label>
            <input type="text" class="form-control" id="amount" name="Amount" readonly>
        </div>

        <input type="text" name="Comp_Id" value="1" hidden required>
        <input type="text" name="IsDisable" value="0" hidden required>
        <button type="submit">Add</button>
    </form>



</body>
</html>
