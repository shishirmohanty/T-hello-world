<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #1f4037, #99f2c8);
      color: #fff;
      text-align: center;
      padding-top: 100px;
      animation: fadeIn 2s ease-in-out;
    }

    h1 {
      font-size: 48px;
      margin-bottom: 20px;
      text-shadow: 2px 2px 4px #000;
    }

    .logo {
      width: 150px;
      animation: spin 5s linear infinite;
    }

    .qsn-box {
      background: rgba(255,255,255,0.1);
      padding: 20px;
      margin: 40px auto;
      width: 300px;
      border-radius: 15px;
      box-shadow: 0 0 20px rgba(0,0,0,0.2);
    }

    input, button {
      padding: 10px;
      margin: 10px;
      border: none;
      border-radius: 8px;
      font-size: 16px;
    }

    button {
      background: #fff;
      color: #1f4037;
      cursor: pointer;
    }

    #result {
      font-size: 18px;
      margin-top: 10px;
      font-weight: bold;
    }

    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }

    @keyframes fadeIn {
      from { opacity: 0; }
      to   { opacity: 1; }
    }
  </style>
</head>
<body>
  <img class="logo" src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" alt="Welcome Logo" />
  <h1>Hello, Welcome Shishir Mohanty !!!</h1>

  <div class="qsn-box">
    <p>Can you solve this?</p>
    <label>2 + 3 = </label>
    <input type="number" id="answer" />
    <button onclick="checkAnswer()">Submit</button>
    <div id="result"></div>
  </div>

  <script>
    function checkAnswer() {
      const ans = document.getElementById('answer').value;
      const result = document.getElementById('result');
      if (ans == '5') {
        result.textContent = 'Correct! 🎉';
        result.style.color = 'lightgreen';
      } else {
        result.textContent = 'Oops! Try again.';
        result.style.color = 'red';
      }
    }
  </script>
</body>
</html>
