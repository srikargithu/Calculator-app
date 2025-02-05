<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>4x4 Grid Calculator</title>
    <style>
        table {
            width: 400px;
            height: 400px;
            border-collapse: collapse;
            margin: auto;
        }
        td {
            border: 1px solid black;
            text-align: center;
            vertical-align: middle;
            font-size: 30px;
            width: 100px;
            height: 100px;
            cursor: pointer;
        }
        .digit {
            background-color: #e0f7fa; /* Light Cyan */
        }
        .operator {
            background-color: #ffe0b2; /* Light Orange */
        }
        .equals {
            background-color: #dcedc8; /* Light Green */
        }
        .clear {
            background-color: #ffccbc; /* Light Red */
        }
        input {
            width: 390px;
            font-size: 30px;
            text-align: right;
            margin: auto;
            display: block;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">JSP Grid Calculator</h1>
    <form method="post">
        <input type="text" name="display" readonly>
        <input type="text" name="result" readonly>
        <table>
            <tr>
                <td class="digit" onclick="append('7')">7</td>
                <td class="digit" onclick="append('8')">8</td>
                <td class="digit" onclick="append('9')">9</td>
                <td class="operator" onclick="append('/')">/</td>
            </tr>
            <tr>
                <td class="digit" onclick="append('4')">4</td>
                <td class="digit" onclick="append('5')">5</td>
                <td class="digit" onclick="append('6')">6</td>
                <td class="operator" onclick="append('*')">*</td>
            </tr>
            <tr>
                <td class="digit" onclick="append('1')">1</td>
                <td class="digit" onclick="append('2')">2</td>
                <td class="digit" onclick="append('3')">3</td>
                <td class="operator" onclick="append('-')">-</td>
            </tr>
            <tr>
                <td class="digit" onclick="append('0')">0</td>
                <td class="digit" onclick="append('.')">.</td>
                <td class="equals" onclick="calculate()">=</td>
                <td class="operator" onclick="append('+')">+</td>
            </tr>
            <tr>
                <td class="clear" colspan="4" onclick="clearDisplay()">C</td>
            </tr>
        </table>
    </form>
    <script>
        function append(value) {
            document.forms[0].display.value += value;
        }
        
        function clearDisplay() {
            document.forms[0].display.value = '';
            document.forms[0].result.value = '';
        }

        function calculate() {
            try {
                var result = eval(document.forms[0].display.value);
                document.forms[0].result.value = result;
            } catch (e) {
                document.forms[0].result.value = 'Error';
            }
        }
    </script>
</body>
</html>
