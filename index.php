<?php
require_once './config/connect.php';
require_once './xmlReader.php';
global $connect_db;

$datas = xmlReaderFromUrl();
$pullSQL = '';
$add = 0;
$update = 0;

foreach($datas as $data){
    $id = $data['ID'];
    $numCode = $data['NumCode'];
    $charCode = $data['CharCode'];
    $nominal = $data['Nominal'];
    $name = $data['Name'];
    $value = (string)$data['Value'];
    $value = str_replace(',','.',$value);
    $vunitRate = (string)$data['VunitRate'];
    $vunitRate = str_replace(',','.',$vunitRate);

    $query = "SELECT COUNT(*) kol FROM `valutes` WHERE (`id_valutes` = '$id')";
    $result = mysqli_query($connect_db, $query);
    $count = mysqli_fetch_assoc($result);
    if ((int)$count['kol'] == 0) {
        $query = "INSERT INTO `valutes` (`id_valutes`, `NumCode`, `CharCode`, `Nominal`, `Name`, `Value`, `VunitRate`) VALUES ('$id', '$numCode', '$charCode', '$nominal', '$name', '$value', '$vunitRate')";
        if(mysqli_query($connect_db,$query)){
            $add++;
        }
    } else {
        $query = "UPDATE `valutes` SET `Value` = '$value' WHERE (`id_valutes` = '$id')";
        if(mysqli_query($connect_db,$query)){
            $update++;
        }
    }
}
mysqli_close($connect_db);

echo "<br>\n".'Служебная информация:';
echo "<br>\n".'Всего валют в xml ссылке = '.count($datas);
echo "<br>\n".'Добавлено валют = '.$add;
echo "<br>\n".'Обновлено валют = '.$update."<br>\n";
echo "<br>\n";

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>

<table border="1" style="background-color: greenyellow ; padding: 3px;">
    <tr>
        <td>price(text)</td>
        <td>currency_from</td>
        <td>currency_to</td>
        <td>rezul_convert</td>
    </tr>
    <tr>
        <td>
            <input type="text" id="text_value" required="required">
        </td>
        <td>
            <select id="from">
                <option value="0">- Не выбрано -</option>
                <?php
                $connect_db = mysqli_connect('localhost', 'root', '', 'fmc');
                $sql = "SELECT * FROM `valutes` ORDER BY `Name` ";
                $result = mysqli_query($connect_db,$sql);

                while($row = mysqli_fetch_assoc($result)){
                    echo "<option value='$row[id_valutes]'>$row[Name] , $row[CharCode]</option>";
                }
                mysqli_close($connect_db);
                ?>
            </select>
        </td>
        <td>
            <select id="to">
                <option value="0">- Не выбрано -</option>
                <?php
                $connect_db = mysqli_connect('localhost', 'root', '', 'fmc');
                $sql = "SELECT * FROM `valutes` ORDER BY `Name` ";
                $result = mysqli_query($connect_db,$sql);

                while($row = mysqli_fetch_assoc($result)){
                    echo "<option value='$row[id_valutes]'>$row[Name] , $row[CharCode]</option>";
                }
                mysqli_close($connect_db);
                ?>
            </select>
        </td>
        <td>
            <input type="text" id="text_rezult">
        </td>
    </tr>
</table>

<button id="convert" style="background-color: orange">Сконвертировать валюту</button>

<script src="script.js"></script>

</body>
</html>

