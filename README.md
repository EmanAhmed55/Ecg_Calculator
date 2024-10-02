<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ECG Data Analysis Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1, h2, h3 {
            color: #333;
        }
        pre {
            background-color: #eee;
            padding: 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <h1>ECG Data Analysis Project</h1>
    <p>This project involves a MATLAB script that provides a user-friendly GUI for processing ECG data from selected files.</p>

    <h2>Project Description</h2>
    <p>The MATLAB script allows users to:</p>
    <ul>
        <li>Select an <code>ecg_data.mat</code> file.</li>
        <li>Visualize the ECG data through plotting.</li>
        <li>Calculate the heart rate using the R-R interval.</li>
        <li>Detect signs of myocardial dysfunction (bonus feature).</li>
    </ul>

    <h2>Heart Rate Calculation</h2>
    <p>The heart rate is calculated using the formula:</p>
    <pre><code>Rate = 60 * sampling rate / (R-R interval);</code></pre>

    <h2>Installation</h2>
    <p>To run this project, ensure you have MATLAB installed. Clone or download the repository, then open the script in MATLAB.</p>

    <h2>Usage</h2>
    <ol>
        <li>Run the MATLAB script.</li>
        <li>Click the button to select your <code>ecg_data.mat</code> file.</li>
        <li>The ECG data will be plotted on the GUI.</li>
        <li>The heart rate will be calculated and displayed.</li>
        <li>Myocardial dysfunction, if detected, will also be shown.</li>
    </ol>

    <h2>Contact</h2>
    <p>If you have questions or need further assistance, please reach out:</p>
    <ul>
        <li>Email: <a href="mailto:youremail@example.com">youremail@example.com</a></li>
        <li>GitHub: <a href="https://github.com/yourusername">yourusername</a></li>
    </ul>

    <h2>License</h2>
    <p>This project is licensed under the MIT License. See the <a href="LICENSE">LICENSE</a> file for details.</p>

</body>
</html>
