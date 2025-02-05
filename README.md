 JSP Grid Calculator

This is a simple web-based 4x4 grid calculator built using Java Server Pages (JSP). The calculator supports basic arithmetic operations: addition, subtraction, multiplication, and division.

 Features

- Responsive Design: The calculator adjusts its size based on the device screen size.
- Basic Operations: Supports addition, subtraction, multiplication, and division.
- Clear Button: Allows users to clear the display.
- Light Colors: Uses a light color scheme for a visually appealing interface.

 Usage

1. Open the `index.jsp` file in your preferred JSP-supporting web server (e.g., Apache Tomcat).
2. Use the numeric and operator buttons to perform calculations.
3. Click the `=` button to see the result of the calculation.
4. Click the `C` button to clear the display.

 File Structure

- `index.jsp`: The main JSP file containing the HTML structure and JavaScript functions for the calculator.
- `style.css`: Contains the CSS styles for the calculator (integrated within the JSP file in this example).

 Code Breakdown

 HTML

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>4x4 Grid Calculator</title>
    <style>
        /* Styles included here */
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


 Usage

1. Start your web server (e.g., Apache Tomcat).

2. Open your web browser and navigate to `http://localhost:8080/grid-calculator` (adjust the URL based on your server configuration).

3. The calculator interface should be displayed. Enter your calculation by clicking the buttons on the grid, and the result will be shown in the result input box.

 Contributing

Feel free to fork this repository and submit pull requests. For major changes, please open an issue first to discuss what you would like to change.

 License

This project is licensed under the MIT License. See the `LICENSE` file for more information.

