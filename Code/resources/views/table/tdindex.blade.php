{{-- {{ $tablelist }} --}}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table Allocation</title>
    <link rel="stylesheet" href="{{ asset('css/table.css') }}">
    <style>
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
        <h1 style="color: white">Table Allocation</h1>
        <a href="javascript:history.back()" class="back-button">&#8249;</a>
    </header>
    <div>
        <div>

        </div>
        <div style="display: flex; justify-content: flex-end;" >
            <a class="reserve-button" style="background: #ff8a8a" href="#">O</a> &nbsp;Occupied  &nbsp; &nbsp; &nbsp;
            <a class="reserve-button" style="background: #8aa4ff" href="#">R</a> &nbsp;Reserved  &nbsp; &nbsp; &nbsp;
            <a class="reserve-button" style="background: green" href="#">C</a> &nbsp;Complete  &nbsp; &nbsp; &nbsp;
            <a class="reserve-button" style="background: Red " href="#">X</a> &nbsp;Cancle  &nbsp; &nbsp; &nbsp;
        </div>
    </div>

{{--1->  vacant
    2 -> occupied
    3 -> reserved --}}
<h3>Ac Hall</h3>
<div class="container">
    <div class="table-status">
    @foreach ($AcTableList as $AcTable)
        @if(intval($AcTable->isactive)==1)
        <div class="table vacant">
             <h5> T : {{$AcTable->name}} <br>Person : {{ $AcTable->person }} </h5>
            <div class="button-container">
            <a class="reserve-button" style="background: #ff8a8a" href="/Table/TableDetailsStatus?id={{$AcTable->Tid}}&isActive=2">O</a>
            <a class="reserve-button" style="background: #8aa4ff" href="/Table/TableDetailsStatus?id={{$AcTable->Tid}}&isActive=3">R</a>
            </div>
        </div>
        @endif
        @if(intval($AcTable->isactive)==2)
        <div class="table occupied">
            <h5> T : {{$AcTable->name}} <br>Person : {{ $AcTable->person }} </h5>
            <div class="button-container">
            <a class="reserve-button" style="background: green" href="/Table/TableDetailsStatus?id={{$AcTable->Tid}}&isActive=4">C</a>
            <a class="reserve-button" style="background: Red " href="/Table/TableDetailsStatus?id={{$AcTable->Tid}}&isActive=1">X</a>
            <a class="reserve-button" style="background: gray " href="/Order/OrderAdd?id={{$AcTable->Tid}}">&plus;</a>
            </div>
        </div>
        @endif
        @if(intval($AcTable->isactive)==3)
        <div class="table reserved">
            <h5> T : {{$AcTable->name}} <br>Person : {{ $AcTable->person }} </h5>
            <div class="button-container">
            <a class="reserve-button" style="background: #ff8a8a" href="/Table/TableDetailsStatus?id={{$AcTable->Tid}}&isActive=2">O</a>
            <a class="reserve-button" style="background: Red" href="/Table/TableDetailsStatus?id={{$AcTable->Tid}}&isActive=1">X</a>
            </div>
        </div>
        @endif
    @endforeach
    </div>
</div>

<h3>Non-Ac Hall</h3>
<div class="container">
    <div class="table-status">
    @foreach ($NonAcTableList as $NAcTable)
        @if(intval($NAcTable->isactive)==1)
        <div class="table vacant">
            <h5> T : {{$NAcTable->name}} <br>Person : {{ $NAcTable->person }} </h5>
            <div class="button-container">
            <a class="reserve-button" style="background: #ff8a8a" href="/Table/TableDetailsStatus?id={{$NAcTable->Tid}}&isActive=2">O</a>
            <a class="reserve-button" style="background: #8aa4ff" href="/Table/TableDetailsStatus?id={{$NAcTable->Tid}}&isActive=3">R</a>
            </div>
        </div>
        @endif
        @if(intval($NAcTable->isactive)==2)
        <div class="table occupied">
            <h5> T : {{$NAcTable->name}} <br>Person : {{ $NAcTable->person }} </h5>
            <div class="button-container">
            <a class="reserve-button" style="background: green" href="/Table/TableDetailsStatus?id={{$NAcTable->Tid}}&isActive=4">C</a>
            <a class="reserve-button" style="background: Red " href="/Table/TableDetailsStatus?id={{$NAcTable->Tid}}&isActive=1">X</a>
            <a class="reserve-button" style="background: gray " href="/Order/OrderAdd?id={{$NAcTable->Tid}}">&plus;</a>
            </div>
        </div>
        @endif
        @if(intval($NAcTable->isactive)==3)
        <div class="table reserved">
            <h5> T : {{$NAcTable->name}} <br>Person : {{ $NAcTable->person }} </h5>
            <div class="button-container">
            <a class="reserve-button" style="background: #ff8a8a" href="/Table/TableDetailsStatus?id={{$NAcTable->Tid}}&isActive=2">O</a>
            <a class="reserve-button" style="background: Red" href="/Table/TableDetailsStatus?id={{$NAcTable->Tid}}&isActive=1">X</a>
            </div>
        </div>
        @endif
    @endforeach
    </div>
</div>

</body>
</html>

